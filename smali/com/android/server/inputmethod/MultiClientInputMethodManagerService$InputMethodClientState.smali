.class interface abstract annotation Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$InputMethodClientState;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "InputMethodClientState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALREADY_SENT_BIND_RESULT:I = 0x4

.field public static final READY_TO_SEND_FIRST_BIND_RESULT:I = 0x3

.field public static final REGISTERED:I = 0x1

.field public static final UNREGISTERED:I = 0x5

.field public static final WAITING_FOR_IME_SESSION:I = 0x2
