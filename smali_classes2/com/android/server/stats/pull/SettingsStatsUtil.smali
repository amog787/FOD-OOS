.class final Lcom/android/server/stats/pull/SettingsStatsUtil;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    }
.end annotation


# static fields
.field private static final GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field private static final TAG:Ljava/lang/String; = "SettingsStatsUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 47
    const/4 v0, 0x4

    new-array v1, v0, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "GlobalFeature__boolean_whitelist"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__integer_whitelist"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__float_whitelist"

    const/4 v7, 0x3

    invoke-direct {v2, v5, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__string_whitelist"

    invoke-direct {v2, v5, v0}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 57
    new-array v1, v0, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__boolean_whitelist"

    invoke-direct {v2, v5, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__integer_whitelist"

    invoke-direct {v2, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__float_whitelist"

    invoke-direct {v2, v5, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__string_whitelist"

    invoke-direct {v2, v5, v0}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 67
    new-array v1, v0, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SystemFeature__boolean_whitelist"

    invoke-direct {v2, v5, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__integer_whitelist"

    invoke-direct {v2, v3, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__float_whitelist"

    invoke-direct {v2, v3, v7}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__string_whitelist"

    invoke-direct {v2, v3, v0}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v7

    sput-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;
    .locals 9
    .param p0, "atomTag"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "type"    # I

    .line 159
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 162
    .local v0, "builder":Landroid/util/StatsEvent$Builder;
    const/4 v1, 0x0

    .line 163
    .local v1, "booleanValue":Z
    const/4 v2, 0x0

    .line 164
    .local v2, "intValue":I
    const/4 v3, 0x0

    .line 165
    .local v3, "floatValue":F
    const-string v4, ""

    .line 166
    .local v4, "stringValue":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 167
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 168
    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 169
    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 171
    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 172
    invoke-virtual {v5, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/16 :goto_1

    .line 174
    :cond_0
    const/4 v5, 0x1

    if-eq p4, v5, :cond_4

    const/4 v5, 0x2

    const-string v6, "Can not parse value to float: "

    const-string v7, "SettingsStatsUtil"

    if-eq p4, v5, :cond_3

    const/4 v5, 0x3

    if-eq p4, v5, :cond_2

    const/4 v5, 0x4

    if-eq p4, v5, :cond_1

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected value type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_1
    move-object v4, p2

    .line 194
    goto :goto_0

    .line 187
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 190
    goto :goto_0

    .line 188
    :catch_0
    move-exception v5

    .line 189
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 180
    :cond_3
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v5

    .line 183
    goto :goto_0

    .line 181
    :catch_1
    move-exception v5

    .line 182
    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 176
    :cond_4
    const-string v5, "1"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 177
    nop

    .line 198
    :goto_0
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 199
    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 200
    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 201
    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 202
    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object v5

    .line 203
    invoke-virtual {v5, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 205
    :goto_1
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object v5

    return-object v5
.end method

.method static getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;
    .locals 6
    .param p0, "flag"    # Ljava/lang/String;

    .line 139
    const-string v0, "settings_stats"

    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "base64":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x0

    return-object v1

    .line 143
    :cond_0
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 144
    .local v1, "decode":[B
    const/4 v2, 0x0

    .line 146
    .local v2, "list":Lcom/android/service/nano/StringListParamProto;
    :try_start_0
    invoke-static {v1}, Lcom/android/service/nano/StringListParamProto;->parseFrom([B)Lcom/android/service/nano/StringListParamProto;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v3

    .line 148
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SettingsStatsUtil"

    const-string v5, "Error parsing string list proto"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method static logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atomTag"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 81
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 84
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 85
    .local v7, "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    .line 86
    .local v8, "proto":Lcom/android/service/nano/StringListParamProto;
    if-nez v8, :cond_0

    .line 87
    move/from16 v15, p1

    goto :goto_2

    .line 89
    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 90
    .local v12, "key":Ljava/lang/String;
    invoke-static {v2, v12, v0}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, "value":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    .line 84
    .end local v7    # "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    .end local v8    # "proto":Lcom/android/service/nano/StringListParamProto;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 95
    :cond_2
    move/from16 v15, p1

    return-object v1
.end method

.method static logSecureSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atomTag"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 119
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 122
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 123
    .local v7, "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    .line 124
    .local v8, "proto":Lcom/android/service/nano/StringListParamProto;
    if-nez v8, :cond_0

    .line 125
    move/from16 v15, p1

    goto :goto_2

    .line 127
    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 128
    .local v12, "key":Ljava/lang/String;
    invoke-static {v2, v12, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "value":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    .line 122
    .end local v7    # "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    .end local v8    # "proto":Lcom/android/service/nano/StringListParamProto;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 133
    :cond_2
    move/from16 v15, p1

    return-object v1
.end method

.method static logSystemSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atomTag"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/StatsEvent;",
            ">;"
        }
    .end annotation

    .line 100
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Landroid/util/StatsEvent;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 104
    .local v7, "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    iget-object v8, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v8

    .line 105
    .local v8, "proto":Lcom/android/service/nano/StringListParamProto;
    if-nez v8, :cond_0

    .line 106
    move/from16 v15, p1

    goto :goto_2

    .line 108
    :cond_0
    iget-object v9, v8, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v10, v9

    move v11, v5

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 109
    .local v12, "key":Ljava/lang/String;
    invoke-static {v2, v12, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "value":Ljava/lang/String;
    iget v14, v7, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    move/from16 v15, p1

    invoke-static {v15, v12, v13, v0, v14}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move/from16 v15, p1

    .line 103
    .end local v7    # "flagsData":Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;
    .end local v8    # "proto":Lcom/android/service/nano/StringListParamProto;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_2
    move/from16 v15, p1

    return-object v1
.end method
