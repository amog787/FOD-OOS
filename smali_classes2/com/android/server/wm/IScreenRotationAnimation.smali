.class public interface abstract Lcom/android/server/wm/IScreenRotationAnimation;
.super Ljava/lang/Object;
.source "IScreenRotationAnimation.java"


# virtual methods
.method public abstract dismiss(Landroid/view/SurfaceControl$Transaction;JFIIII)Z
.end method

.method public abstract dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract getEnterTransformation()Landroid/view/animation/Transformation;
.end method

.method public abstract hasScreenshot()Z
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isRotating()Z
.end method

.method public abstract kill()V
.end method

.method public abstract printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract setRotation(Landroid/view/SurfaceControl$Transaction;I)V
.end method
