.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# static fields
.field private static final CONFIG_FILE_FORMAT:Ljava/lang/String; = "display_%d.xml"

.field private static final DISPLAY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field public static final HIGH_BRIGHTNESS_MODE_UNSUPPORTED:F = NaNf

.field private static final TAG:Ljava/lang/String; = "DisplayDeviceConfig"


# instance fields
.field private mBrightness:[F

.field private mNits:[F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static create(J)Lcom/android/server/display/DisplayDeviceConfig;
    .locals 7
    .param p0, "physicalDisplayId"    # J

    .line 63
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>()V

    .line 64
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "display_%d.xml"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "filename":Ljava/lang/String;
    nop

    .line 67
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "etc"

    aput-object v6, v5, v4

    const-string v4, "displayconfig"

    aput-object v4, v5, v1

    const/4 v1, 0x2

    aput-object v2, v5, v1

    .line 66
    invoke-static {v3, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)V

    .line 68
    return-object v0
.end method

.method private initFromFile(Ljava/io/File;)V
    .locals 4
    .param p1, "configFile"    # Ljava/io/File;

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, "DisplayDeviceConfig"

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display configuration is not a file: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 100
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v2

    .line 102
    .local v2, "config":Lcom/android/server/display/config/DisplayConfiguration;
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v2    # "config":Lcom/android/server/display/config/DisplayConfiguration;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .end local v0    # "in":Ljava/io/InputStream;
    goto :goto_1

    .line 100
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayDeviceConfig;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 103
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayDeviceConfig;
    .restart local p1    # "configFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .locals 12
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object v0

    .line 111
    .local v0, "map":Lcom/android/server/display/config/NitsMap;
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 112
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 114
    .local v2, "size":I
    new-array v3, v2, [F

    .line 115
    .local v3, "nits":[F
    new-array v4, v2, [F

    .line 117
    .local v4, "backlight":[F
    const/4 v5, 0x0

    .line 118
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/config/Point;

    .line 119
    .local v7, "point":Lcom/android/server/display/config/Point;
    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v3, v5

    .line 120
    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v4, v5

    .line 121
    if-lez v5, :cond_1

    .line 122
    aget v8, v3, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v3, v9

    cmpg-float v8, v8, v9

    const-string v9, " < "

    const-string v10, "DisplayDeviceConfig"

    if-gez v8, :cond_0

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 128
    :cond_0
    aget v8, v4, v5

    add-int/lit8 v11, v5, -0x1

    aget v11, v4, v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_1

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_1
    nop

    .end local v7    # "point":Lcom/android/server/display/config/Point;
    add-int/lit8 v5, v5, 0x1

    .line 136
    goto/16 :goto_0

    .line 137
    :cond_2
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 138
    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 139
    return-void
.end method


# virtual methods
.method public getBrightness()[F
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object v0
.end method

.method public getNits()[F
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object v0
.end method
