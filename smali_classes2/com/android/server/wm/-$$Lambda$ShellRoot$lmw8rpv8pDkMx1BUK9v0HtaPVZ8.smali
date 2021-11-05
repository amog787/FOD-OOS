.class public final synthetic Lcom/android/server/wm/-$$Lambda$ShellRoot$lmw8rpv8pDkMx1BUK9v0HtaPVZ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ShellRoot;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ShellRoot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ShellRoot$lmw8rpv8pDkMx1BUK9v0HtaPVZ8;->f$0:Lcom/android/server/wm/ShellRoot;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ShellRoot$lmw8rpv8pDkMx1BUK9v0HtaPVZ8;->f$0:Lcom/android/server/wm/ShellRoot;

    invoke-virtual {v0}, Lcom/android/server/wm/ShellRoot;->lambda$setAccessibilityWindow$1$ShellRoot()V

    return-void
.end method
