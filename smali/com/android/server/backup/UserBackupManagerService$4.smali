.class Lcom/android/server/backup/UserBackupManagerService$4;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/UserBackupManagerService;->dataChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/UserBackupManagerService;

    .line 2659
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$4;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$targets:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2661
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$4;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService$4;->val$targets:Ljava/util/HashSet;

    invoke-static {v0, v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->access$1500(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2662
    return-void
.end method
