.class Lcom/android/server/content/SyncManager$11;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/RegisteredServicesCacheListener<",
        "Landroid/content/SyncAdapterType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .line 617
    iput-object p1, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceChanged(Landroid/content/SyncAdapterType;IZ)V
    .locals 11
    .param p1, "type"    # Landroid/content/SyncAdapterType;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .line 620
    if-nez p3, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/server/content/SyncManager$11;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x3

    iget-object v4, p1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 625
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 621
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 627
    :cond_0
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0

    .line 617
    check-cast p1, Landroid/content/SyncAdapterType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/content/SyncManager$11;->onServiceChanged(Landroid/content/SyncAdapterType;IZ)V

    return-void
.end method
