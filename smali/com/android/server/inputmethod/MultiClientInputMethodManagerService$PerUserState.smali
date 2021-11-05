.class interface abstract annotation Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$PerUserState;
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
    name = "PerUserState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final SERVICE_CONNECTED:I = 0x5

.field public static final SERVICE_NOT_QUERIED:I = 0x2

.field public static final SERVICE_RECOGNIZED:I = 0x3

.field public static final UNBIND_CALLED:I = 0x6

.field public static final USER_LOCKED:I = 0x1

.field public static final WAITING_SERVICE_CONNECTED:I = 0x4
