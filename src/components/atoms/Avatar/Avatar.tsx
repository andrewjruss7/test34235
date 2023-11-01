import React from 'react';
import Image from "next/image";
import cn from "classnames";
export interface AvatarProps {
    classname?: string;
    src: string
    alt: string
    size: "small" | "medium" | "large"
}

const Avatar: React.FC<AvatarProps> = ({classname, src, alt, size}) => {
    let width, height;
    if (size === "small") {
        width = 50;
        height = 50;
    } else if (size === "medium") {
        width = 100;
        height = 100;
    } else if (size === "large") {
        width = 150;
        height = 150;
    }
  return (
      <div className={classname}>
        <Image className={cn( {
            "rounded-full": size === "large",
            "rounded-md": size === "medium",
            "rounded": size === "small",
        })}
               src={src}
               alt={alt}
               width={width}
               height={height}
        />
      </div>
  )
};

export default Avatar;