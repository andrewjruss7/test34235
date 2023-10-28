---
to: src/components/organisms/<%= name %>Form/<%= name %>Form.tsx
---

import * as yup from 'yup';

import { Form, Formik } from 'formik';
import React, { useState } from 'react';

import FormSubmitButton from '@/components/molecules/FormSubmitButton';
import DefaultModal, { type DefaultModalProps } from '@/components/atoms/Modal';
import { TextInputField } from '@/components/molecules/TextInput';
import Typography from '@/components/atoms/Typography';
import VerticalLayout from '@/components/layouts/VerticalLayout';

export interface <%= name %>FormValues {
  REPLACE_ME: string;
}

export interface <%= name %>FormModalProps extends Omit<DefaultModalProps, 'children'> {
  onSuccess: (data: any) => any;
}

export interface <%= name %>FormContainerProps extends React.HTMLAttributes<HTMLDivElement> {
  onSuccess: (data: any) => any;
}

export interface <%= name %>FormProps {
  formSubmissionError?: string;
  onSubmit: (values: <%= name %>FormValues) => any;
  initialValues: <%= name %>FormValues;
}

export const <%= name %>FormModal: React.FC<<%= name %>FormModalProps> = ({
  onSuccess,
  ...modalProps
}) => {
  return (
    <DefaultModal {...modalProps}>
      <Typography variant="heading1">
        HEADING
      </Typography>

      <<%= name %>FormContainer onSuccess={onSuccess} />
    </DefaultModal>
  );
};

const <%= name %>FormContainer: React.FC<<%= name %>FormContainerProps> = ({ onSuccess }) => {
  const initialValues = {
    REPLACE_ME: '',
  };
  const [formSubmissionError, setFormSubmissionError] = useState();

  const onSubmit = async ({}: <%= name %>FormValues) => {
    setFormSubmissionError(undefined);

    try {
      onSuccess({});
    } catch (error: any) {
      setFormSubmissionError(error.message);
    }
  };

  return (
    <<%= name %>Form
      onSubmit={onSubmit}
      formSubmissionError={formSubmissionError}
      initialValues={initialValues}
    />
  );
};

export const <%= name %>Form: React.FC<<%= name %>FormProps> = ({
  onSubmit,
  formSubmissionError,
  initialValues,
}) => {
  return (
    <Formik
      initialValues={initialValues}
      validationSchema={yup.object().shape({})}
      onSubmit={onSubmit}
    >
      {({ isValid, isSubmitting }) => (
        <Form>
          <VerticalLayout>
            <TextInputField name="REPLACE_ME" label="" disabled={isSubmitting} />

            <FormSubmitButton
              disabled={!isValid}
              loading={isSubmitting}
              error={formSubmissionError}
            >
              Confirm
            </FormSubmitButton>
          </VerticalLayout>
        </Form>
      )}
    </Formik>
  );
};

export default <%= name %>FormContainer;