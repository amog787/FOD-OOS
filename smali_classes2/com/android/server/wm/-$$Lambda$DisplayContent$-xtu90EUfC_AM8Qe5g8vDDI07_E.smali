.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$-xtu90EUfC_AM8Qe5g8vDDI07_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$-xtu90EUfC_AM8Qe5g8vDDI07_E;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$-xtu90EUfC_AM8Qe5g8vDDI07_E;->f$0:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/wm/DisplayContent;->lambda$updateImeControlTarget$16(Landroid/os/IBinder;)V

    return-void
.end method
