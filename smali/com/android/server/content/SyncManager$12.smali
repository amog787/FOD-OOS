.class Lcom/android/server/content/SyncManager$12;
.super Landroid/database/ContentObserver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 696
    iput-object p1, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    iput-object p3, p0, Lcom/android/server/content/SyncManager$12;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 698
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1600(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$1576(Lcom/android/server/content/SyncManager;I)Z

    .line 699
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1500(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/server/content/SyncManager$12;->val$resolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 702
    :cond_0
    return-void
.end method
