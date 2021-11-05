.class Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;
.super Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    .line 2788
    iput-object p1, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-direct {p0}, Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnsyncableAccountDone(Z)V
    .locals 1
    .param p1, "isReady"    # Z

    .line 2791
    if-eqz p1, :cond_0

    .line 2792
    iget-object v0, p0, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck$1;->this$0:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-static {v0}, Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;->access$2400(Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    .line 2794
    :cond_0
    return-void
.end method
