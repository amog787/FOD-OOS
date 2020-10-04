.class Lcom/android/server/am/ActivityManagerService$28;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$aInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activityShortComponentName:Ljava/lang/String;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$parentProcess:Lcom/android/server/wm/WindowProcessController;

.field final synthetic val$parentShortComponentName:Ljava/lang/String;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 20361
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$28;->val$activityShortComponentName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$28;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$parentShortComponentName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$28;->val$parentProcess:Lcom/android/server/wm/WindowProcessController;

    iput-boolean p7, p0, Lcom/android/server/am/ActivityManagerService$28;->val$aboveSystem:Z

    iput-object p8, p0, Lcom/android/server/am/ActivityManagerService$28;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 20364
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$28;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$28;->val$activityShortComponentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$aInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$28;->val$parentShortComponentName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$28;->val$parentProcess:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$28;->val$aboveSystem:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$28;->val$annotation:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 20366
    return-void
.end method
