.class Lcom/android/server/locksettings/LockSettingsService$Injector$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field final synthetic val$storage:Lcom/android/server/locksettings/LockSettingsStorage;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 389
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->this$0:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 393
    const/4 v0, 0x0

    const-string/jumbo v1, "ro.lockscreen.disable.default"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 395
    .local v1, "lockScreenDisable":Z
    if-eqz v1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v3, "lockscreen.disabled"

    const-string v4, "1"

    invoke-virtual {v2, p1, v3, v4, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 398
    :cond_0
    return-void
.end method
