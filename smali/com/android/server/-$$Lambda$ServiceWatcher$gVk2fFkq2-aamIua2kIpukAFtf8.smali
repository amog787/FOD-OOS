.class public final synthetic Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ServiceWatcher;

.field private final synthetic f$1:Lcom/android/server/ServiceWatcher$BinderRunner;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceWatcher;Lcom/android/server/ServiceWatcher$BinderRunner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;->f$0:Lcom/android/server/ServiceWatcher;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;->f$1:Lcom/android/server/ServiceWatcher$BinderRunner;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;->f$0:Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$gVk2fFkq2-aamIua2kIpukAFtf8;->f$1:Lcom/android/server/ServiceWatcher$BinderRunner;

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->lambda$runOnBinder$1$ServiceWatcher(Lcom/android/server/ServiceWatcher$BinderRunner;)V

    return-void
.end method
