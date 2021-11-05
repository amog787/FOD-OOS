.class public final synthetic Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/-$$Lambda$SyncManager$zZUXjd-GLFQgHtMQ3vq0EWHvir8;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->lambda$sendOnUnsyncableAccount$12(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    return-void
.end method
