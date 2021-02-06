.class final Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextClassifierSettingsListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mServicePackageOverride:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 1013
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 1015
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 1016
    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 1027
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    .line 1028
    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$1100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "currentServicePackageOverride":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    return-void

    .line 1032
    :cond_0
    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 1033
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$2300(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method registerObserver()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 1021
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1019
    const-string v1, "textclassifier"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1023
    return-void
.end method
