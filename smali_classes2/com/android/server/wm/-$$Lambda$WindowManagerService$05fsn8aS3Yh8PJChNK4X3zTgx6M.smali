.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$05fsn8aS3Yh8PJChNK4X3zTgx6M;->f$0:I

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$setCurrentUser$2(ILcom/android/server/wm/DisplayContent;)V

    return-void
.end method
