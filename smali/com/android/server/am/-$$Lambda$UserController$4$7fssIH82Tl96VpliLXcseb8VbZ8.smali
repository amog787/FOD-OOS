.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController$4;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/am/UserState;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController$4;ILcom/android/server/am/UserState;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$0:Lcom/android/server/am/UserController$4;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$2:Lcom/android/server/am/UserState;

    iput-boolean p4, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$0:Lcom/android/server/am/UserController$4;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$2:Lcom/android/server/am/UserState;

    iget-boolean v3, p0, Lcom/android/server/am/-$$Lambda$UserController$4$7fssIH82Tl96VpliLXcseb8VbZ8;->f$3:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/UserController$4;->lambda$performReceive$0$UserController$4(ILcom/android/server/am/UserState;Z)V

    return-void
.end method
