.class public Lcom/android/server/signedconfig/SignedConfig;
.super Ljava/lang/Object;
.source "SignedConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    }
.end annotation


# static fields
.field private static final CONFIG_KEY_MAX_SDK:Ljava/lang/String; = "max_sdk"

.field private static final CONFIG_KEY_MIN_SDK:Ljava/lang/String; = "min_sdk"

.field private static final CONFIG_KEY_VALUES:Ljava/lang/String; = "values"

.field private static final KEY_CONFIG:Ljava/lang/String; = "config"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"


# instance fields
.field public final perSdkConfig:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;",
            ">;)V"
        }
    .end annotation

    .line 84
    .local p2, "perSdkConfig":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/server/signedconfig/SignedConfig;->version:I

    .line 86
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/signedconfig/SignedConfig;->perSdkConfig:Ljava/util/List;

    .line 87
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig;
    .locals 6
    .param p0, "config"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/signedconfig/SignedConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/signedconfig/InvalidConfigException;
        }
    .end annotation

    .line 128
    .local p1, "allowedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "keyValueMappers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "version":I
    const-string v2, "config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 132
    .local v2, "perSdkConfig":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "parsedConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 134
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/android/server/signedconfig/SignedConfig;->parsePerSdkConfig(Lorg/json/JSONObject;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    .end local v4    # "i":I
    :cond_0
    new-instance v4, Lcom/android/server/signedconfig/SignedConfig;

    invoke-direct {v4, v1, v3}, Lcom/android/server/signedconfig/SignedConfig;-><init>(ILjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 139
    .end local v0    # "json":Lorg/json/JSONObject;
    .end local v1    # "version":I
    .end local v2    # "perSdkConfig":Lorg/json/JSONArray;
    .end local v3    # "parsedConfigs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;>;"
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/android/server/signedconfig/InvalidConfigException;

    const-string v2, "Could not parse JSON"

    invoke-direct {v1, v2, v0}, Lcom/android/server/signedconfig/InvalidConfigException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static parsePerSdkConfig(Lorg/json/JSONObject;Ljava/util/Set;Ljava/util/Map;)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/android/server/signedconfig/InvalidConfigException;
        }
    .end annotation

    .line 157
    .local p1, "allowedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "keyValueMappers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v0, "min_sdk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "minSdk":I
    const-string/jumbo v1, "max_sdk"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 159
    .local v1, "maxSdk":I
    const-string/jumbo v2, "values"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 160
    .local v2, "valuesJson":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v3, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Lorg/json/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 162
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 163
    .local v6, "valueObject":Ljava/lang/Object;
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 164
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 165
    :goto_2
    nop

    .line 166
    .local v7, "value":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "Config key "

    if-eqz v8, :cond_4

    .line 169
    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 170
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 171
    .local v8, "mapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 175
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Ljava/lang/String;

    goto :goto_3

    .line 172
    :cond_2
    new-instance v4, Lcom/android/server/signedconfig/InvalidConfigException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " contains unsupported value "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {v7}, Lcom/android/server/signedconfig/SignedConfig;->quoted(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/android/server/signedconfig/InvalidConfigException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .end local v8    # "mapper":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_3
    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "valueObject":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 167
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "valueObject":Ljava/lang/Object;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_4
    new-instance v4, Lcom/android/server/signedconfig/InvalidConfigException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not allowed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/server/signedconfig/InvalidConfigException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "valueObject":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    new-instance v4, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;-><init>(IILjava/util/Map;)V

    return-object v4
.end method

.method private static quoted(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "s"    # Ljava/lang/Object;

    .line 146
    if-nez p0, :cond_0

    .line 147
    const-string/jumbo v0, "null"

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMatchingConfig(I)Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    .locals 3
    .param p1, "sdkVersion"    # I

    .line 96
    iget-object v0, p0, Lcom/android/server/signedconfig/SignedConfig;->perSdkConfig:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;

    .line 97
    .local v1, "config":Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    iget v2, v1, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->minSdk:I

    if-gt v2, p1, :cond_0

    iget v2, v1, Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;->maxSdk:I

    if-gt p1, v2, :cond_0

    .line 98
    return-object v1

    .line 100
    .end local v1    # "config":Lcom/android/server/signedconfig/SignedConfig$PerSdkConfig;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
