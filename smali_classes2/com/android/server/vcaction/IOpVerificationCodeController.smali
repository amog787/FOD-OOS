.class public interface abstract Lcom/android/server/vcaction/IOpVerificationCodeController;
.super Ljava/lang/Object;
.source "IOpVerificationCodeController.java"


# static fields
.field public static final COND_IME_LAYOUT:I = 0x2

.field public static final COND_IME_VISIBILITY:I = 0x1

.field public static final COND_INPUT_CONTENT_EMPTY:I = 0x20

.field public static final COND_INPUT_TYPE_NUM:I = 0x40


# virtual methods
.method public abstract initController(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
.end method

.method public abstract notifyIMELayoutChanged(ZLcom/android/server/wm/DisplayFrames;)V
.end method

.method public abstract notifyImeAttributeChanged(IZ)V
.end method
