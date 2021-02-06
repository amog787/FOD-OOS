.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;->f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iput-wide p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;->f$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$NetworkLoggingHandler$VKC_fB9Ws13yQKJ8zNkiF3Wp0Jk;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->lambda$retrieveFullLogBatch$0$NetworkLoggingHandler(J)V

    return-void
.end method
