.class public final synthetic Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;->f$0:Lcom/android/server/ServiceWatcher;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$K66HPJls7ga1t3t859fKACfAgZc;->f$0:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->lambda$register$0$ServiceWatcher()V

    return-void
.end method
