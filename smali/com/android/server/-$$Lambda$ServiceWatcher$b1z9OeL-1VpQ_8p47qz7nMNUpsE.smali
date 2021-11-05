.class public final synthetic Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ServiceWatcher;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/android/server/ServiceWatcher$BlockingBinderRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceWatcher;Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;->f$0:Lcom/android/server/ServiceWatcher;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;->f$2:Lcom/android/server/ServiceWatcher$BlockingBinderRunner;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;->f$0:Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;->f$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$b1z9OeL-1VpQ_8p47qz7nMNUpsE;->f$2:Lcom/android/server/ServiceWatcher$BlockingBinderRunner;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ServiceWatcher;->lambda$runOnBinderBlocking$2$ServiceWatcher(Ljava/lang/Object;Lcom/android/server/ServiceWatcher$BlockingBinderRunner;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
