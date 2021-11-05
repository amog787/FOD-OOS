.class Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->cancelNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;

    .line 966
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 968
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 970
    .local v0, "nm":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v0, :cond_0

    .line 971
    return-void

    .line 974
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v5, p0, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v1, Lcom/android/server/am/ServiceRecord;->userId:I

    move-object v1, v0

    invoke-interface/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerInternal;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    goto :goto_0

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityManager"

    const-string v3, "Error canceling notification for service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 979
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
