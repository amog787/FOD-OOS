.class public final synthetic Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ShellRoot;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ShellRoot;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;->f$0:Lcom/android/server/wm/ShellRoot;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;->f$1:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;->f$0:Lcom/android/server/wm/ShellRoot;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$ShellRoot$ZIRxB0zj35u-emFBSiaW8a8zUus;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ShellRoot;->lambda$new$0$ShellRoot(I)V

    return-void
.end method
