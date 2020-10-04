.class public final synthetic Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/ServiceWatcher;

.field private final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ServiceWatcher;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;->f$0:Lcom/android/server/ServiceWatcher;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;->f$0:Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$ServiceWatcher$uCZpuTwrOz-CS9PQS2NY1ZXaU8U;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/server/ServiceWatcher;->lambda$onServiceDisconnected$4$ServiceWatcher(Landroid/content/ComponentName;)V

    return-void
.end method
