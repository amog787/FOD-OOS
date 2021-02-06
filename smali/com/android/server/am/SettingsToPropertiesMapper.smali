.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "SettingsToPropertiesMapper.java"


# static fields
.field private static final GLOBAL_SETTINGS_CATEGORY:Ljava/lang/String; = "global_settings"

.field private static final RESET_PERFORMED_PROPERTY:Ljava/lang/String; = "device_config.reset_performed"

.field private static final RESET_RECORD_FILE_PATH:Ljava/lang/String; = "/data/server_configurable_flags/reset_flags"

.field private static final SYSTEM_PROPERTY_INVALID_SUBSTRING:Ljava/lang/String; = ".."

.field private static final SYSTEM_PROPERTY_MAX_LENGTH:I = 0x5c

.field private static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "persist.device_config."

.field private static final SYSTEM_PROPERTY_VALID_CHARACTERS_REGEX:Ljava/lang/String; = "^[\\w\\.\\-@:]*$"

.field private static final TAG:Ljava/lang/String; = "SettingsToPropertiesMapper"

.field static final sDeviceConfigScopes:[Ljava/lang/String;

.field static final sGlobalSettings:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDeviceConfigScopes:[Ljava/lang/String;

.field private final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 71
    const-string/jumbo v0, "native_flags_health_check_enabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    .line 81
    const-string v1, "activity_manager_native_boot"

    const-string v2, "configuration"

    const-string v3, "input_native_boot"

    const-string/jumbo v4, "intelligence_content_suggestions"

    const-string/jumbo v5, "media_native"

    const-string/jumbo v6, "netd_native"

    const-string/jumbo v7, "runtime_native"

    const-string/jumbo v8, "runtime_native_boot"

    const-string/jumbo v9, "storage_native_boot"

    const-string/jumbo v10, "window_manager_native_boot"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "globalSettings"    # [Ljava/lang/String;
    .param p3, "deviceConfigScopes"    # [Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    .line 107
    return-void
.end method

.method static getResetFlagsFileContent()Ljava/lang/String;
    .locals 4

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "reset_flag_file":Ljava/io/File;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 268
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 270
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "reset_flag_file":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "failed to read file /data/server_configurable_flags/reset_flags"

    invoke-static {v2, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 274
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getResetNativeCategories()[Ljava/lang/String;
    .locals 10

    .line 180
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 181
    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    new-array v1, v1, [Ljava/lang/String;

    return-object v1

    .line 189
    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "property_names":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v3, "categories":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 192
    .local v6, "property_name":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "segments":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 194
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to extract category name from property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 195
    goto :goto_1

    .line 197
    :cond_2
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v6    # "property_name":Ljava/lang/String;
    .end local v7    # "segments":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_3
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static isNativeFlagsResetPerformed()Z
    .locals 2

    .line 170
    const-string v0, "device_config.reset_performed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 255
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    .line 256
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 247
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_0

    .line 248
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :goto_0
    return-void
.end method

.method static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "categoryName"    # Ljava/lang/String;
    .param p1, "flagName"    # Ljava/lang/String;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "propertyName":Ljava/lang/String;
    const-string v1, "^[\\w\\.\\-@:]*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    return-object v0

    .line 216
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 224
    if-nez p2, :cond_1

    .line 227
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    const-string p2, ""

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5c

    if-le v0, v1, :cond_2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exceeds system property max length."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 233
    return-void

    .line 237
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    goto :goto_1

    .line 238
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 158
    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 160
    .local v0, "mapper":Lcom/android/server/am/SettingsToPropertiesMapper;
    invoke-virtual {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    .line 161
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$updatePropertiesFromSettings$0$SettingsToPropertiesMapper(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 143
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    .local v2, "key":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "propertyName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to construct system property for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "propertyName":Ljava/lang/String;
    goto :goto_0

    .line 153
    :cond_1
    return-void
.end method

.method updatePropertiesFromSettings()V
    .locals 9

    .line 111
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 112
    .local v4, "globalSetting":Ljava/lang/String;
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 113
    .local v5, "settingUri":Landroid/net/Uri;
    const-string v6, "global_settings"

    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "propName":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 115
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setting uri is null for globalSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 116
    goto :goto_1

    .line 118
    :cond_0
    if-nez v6, :cond_1

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid prop name for globalSetting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    .line 120
    goto :goto_1

    .line 123
    :cond_1
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v7, "co":Landroid/database/ContentObserver;
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v8

    if-nez v8, :cond_2

    .line 133
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    .end local v4    # "globalSetting":Ljava/lang/String;
    .end local v5    # "settingUri":Landroid/net/Uri;
    .end local v6    # "propName":Ljava/lang/String;
    .end local v7    # "co":Landroid/database/ContentObserver;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 139
    .local v3, "deviceConfigScope":Ljava/lang/String;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/-$$Lambda$SettingsToPropertiesMapper$oP9A7vTPRZcZgLdy43KKEveF4zQ;

    invoke-direct {v5, p0}, Lcom/android/server/am/-$$Lambda$SettingsToPropertiesMapper$oP9A7vTPRZcZgLdy43KKEveF4zQ;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 138
    .end local v3    # "deviceConfigScope":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 155
    :cond_4
    return-void
.end method

.method updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "propName"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "settingValue":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return-void
.end method
