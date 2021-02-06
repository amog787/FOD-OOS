.class Lcom/android/server/am/SettingsToPropertiesMapper$1;
.super Landroid/database/ContentObserver;
.source "SettingsToPropertiesMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

.field final synthetic val$globalSetting:Ljava/lang/String;

.field final synthetic val$propName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/SettingsToPropertiesMapper;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 123
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 126
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->this$0:Lcom/android/server/am/SettingsToPropertiesMapper;

    iget-object v1, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$globalSetting:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/SettingsToPropertiesMapper$1;->val$propName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method
