.class Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbKeyStore"
.end annotation


# static fields
.field private static final KEYSTORE_VERSION:I = 0x1

.field private static final MAX_SUPPORTED_KEYSTORE_VERSION:I = 0x1

.field public static final NO_PREVIOUS_CONNECTION:J = 0x0L

.field private static final SYSTEM_KEY_FILE:Ljava/lang/String; = "/adb_keys"

.field private static final XML_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final XML_ATTRIBUTE_LAST_CONNECTION:Ljava/lang/String; = "lastConnection"

.field private static final XML_ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final XML_ATTRIBUTE_WIFI_BSSID:Ljava/lang/String; = "bssid"

.field private static final XML_KEYSTORE_START_TAG:Ljava/lang/String; = "keyStore"

.field private static final XML_TAG_ADB_KEY:Ljava/lang/String; = "adbKey"

.field private static final XML_TAG_WIFI_ACCESS_POINT:Ljava/lang/String; = "wifiAP"


# instance fields
.field private mAtomicKeyFile:Landroid/util/AtomicFile;

.field private mKeyFile:Ljava/io/File;

.field private mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;

    .line 1830
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1831
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->init()V

    .line 1832
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/adb/AdbDebuggingManager;
    .param p2, "keyFile"    # Ljava/io/File;

    .line 1837
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1838
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    .line 1839
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->init()V

    .line 1840
    return-void
.end method

.method private addUserKeysToKeyStore()V
    .locals 8

    .line 2120
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getUserKeyFile()Ljava/io/File;

    move-result-object v0

    .line 2121
    .local v0, "userKeyFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 2122
    .local v1, "mapUpdated":Z
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2123
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2124
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2126
    .local v3, "time":J
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "key":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 2130
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2131
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2132
    const/4 v1, 0x1

    goto :goto_0

    .line 2135
    .end local v3    # "time":J
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2137
    .end local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 2123
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "userKeyFile":Ljava/io/File;
    .end local v1    # "mapUpdated":Z
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2135
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "userKeyFile":Ljava/io/File;
    .restart local v1    # "mapUpdated":Z
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_0
    move-exception v2

    .line 2136
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught an exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 2140
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 2142
    :cond_3
    return-void
.end method

.method private filterOutOldKeys()Z
    .locals 11

    .line 2193
    const/4 v0, 0x0

    .line 2194
    .local v0, "keysDeleted":Z
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v1

    .line 2195
    .local v1, "allowedTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2196
    .local v3, "systemTime":J
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2197
    .local v5, "keyMapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2198
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2199
    .local v6, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2200
    .local v7, "connectionTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-eqz v9, :cond_0

    add-long v9, v7, v1

    cmp-long v9, v3, v9

    if-lez v9, :cond_0

    .line 2201
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2202
    const/4 v0, 0x1

    .line 2204
    .end local v6    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v7    # "connectionTime":J
    :cond_0
    goto :goto_0

    .line 2207
    :cond_1
    if-eqz v0, :cond_2

    .line 2208
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/adb/AdbDebuggingManager;->access$1800(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 2210
    :cond_2
    return v0
.end method

.method private getKeyMap()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1941
    const-string/jumbo v0, "keyStore"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1944
    .local v1, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v3, "AdbDebuggingManager"

    if-nez v2, :cond_0

    .line 1945
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 1946
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v2, :cond_0

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain the key file, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", for reading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    return-object v1

    .line 1951
    :cond_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1952
    return-object v1

    .line 1954
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1955
    .local v2, "keyStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 1956
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1958
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1959
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    .line 1960
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1961
    .local v5, "tagName":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1966
    :cond_2
    const-string/jumbo v0, "version"

    .line 1967
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1968
    .local v0, "keystoreVersion":I
    if-le v0, v7, :cond_6

    .line 1969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore version="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not supported (max_supported="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1972
    nop

    .line 1997
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1972
    :cond_3
    return-object v1

    .line 1962
    .end local v0    # "keystoreVersion":I
    :cond_4
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected keyStore, but got tag="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1964
    nop

    .line 1997
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1964
    :cond_5
    return-object v1

    .line 1975
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_6
    :goto_1
    :try_start_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 1976
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "tagName":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1978
    goto :goto_2

    .line 1979
    :cond_7
    const-string v5, "adbKey"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1980
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1981
    goto :goto_1

    .line 1983
    :cond_8
    const-string/jumbo v5, "key"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1986
    .local v5, "key":Ljava/lang/String;
    :try_start_6
    const-string/jumbo v8, "lastConnection"

    .line 1987
    invoke-interface {v4, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1986
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1994
    .local v8, "connectionTime":J
    nop

    .line 1995
    :try_start_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v1, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    nop

    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "connectionTime":J
    goto :goto_1

    .line 1988
    .restart local v0    # "tagName":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1989
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught a NumberFormatException parsing the last connection time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1993
    goto :goto_1

    .line 1997
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :goto_2
    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 1954
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_a

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :cond_a
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1

    .line 1999
    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    .restart local v1    # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_1
    move-exception v0

    .line 2000
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Caught XmlPullParserException parsing the XML key file: "

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2002
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getKeyMapBeforeKeystoreVersion()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 1997
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Caught an IOException parsing the XML key file: "

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_4
    nop

    .line 2004
    return-object v1
.end method

.method private getKeyMapBeforeKeystoreVersion()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2013
    const-string v0, "adbKey"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2016
    .local v1, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v3, "AdbDebuggingManager"

    if-nez v2, :cond_0

    .line 2017
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 2018
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v2, :cond_0

    .line 2019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain the key file, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", for reading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    return-object v1

    .line 2023
    :cond_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2024
    return-object v1

    .line 2026
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2027
    .local v2, "keyStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2028
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2029
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2030
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 2031
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2032
    .local v5, "tagName":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 2033
    goto :goto_1

    .line 2034
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2035
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2036
    goto :goto_0

    .line 2038
    :cond_3
    const-string/jumbo v6, "key"

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2041
    .local v6, "key":Ljava/lang/String;
    :try_start_2
    const-string/jumbo v8, "lastConnection"

    .line 2042
    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2041
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2049
    .local v7, "connectionTime":J
    nop

    .line 2050
    :try_start_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    nop

    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "connectionTime":J
    goto :goto_0

    .line 2043
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "key":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2044
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Caught a NumberFormatException parsing the last connection time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2048
    goto :goto_0

    .line 2052
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2054
    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    :cond_5
    goto :goto_3

    .line 2026
    .restart local v2    # "keyStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :cond_6
    :goto_2
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1

    .line 2052
    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    .restart local v1    # "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_1
    move-exception v0

    .line 2053
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Caught an exception parsing the XML key file: "

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method

.method private getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1902
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1903
    .local v0, "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v1, "systemKeyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1905
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    .local v2, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "key":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1908
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1909
    .end local v4    # "key":Ljava/lang/String;
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1910
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1913
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1915
    .end local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1905
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "systemKeyFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .end local p1    # "fileName":Ljava/lang/String;
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1913
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v0    # "systemKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "systemKeyFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1914
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught an exception reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdbDebuggingManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v0
.end method

.method private getTrustedNetworks()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2064
    const-string/jumbo v0, "keyStore"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2067
    .local v1, "trustedNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v3, "AdbDebuggingManager"

    if-nez v2, :cond_0

    .line 2068
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 2069
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v2, :cond_0

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain the key file, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", for reading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return-object v1

    .line 2074
    :cond_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2075
    return-object v1

    .line 2077
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2078
    .local v2, "keyStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2079
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2081
    invoke-static {v4, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2082
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_6

    .line 2083
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2084
    .local v5, "tagName":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2089
    :cond_2
    const-string/jumbo v0, "version"

    .line 2090
    invoke-interface {v4, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2091
    .local v0, "keystoreVersion":I
    if-le v0, v7, :cond_6

    .line 2092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keystore version="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not supported (max_supported="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2095
    nop

    .line 2109
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2095
    :cond_3
    return-object v1

    .line 2085
    .end local v0    # "keystoreVersion":I
    :cond_4
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected keyStore, but got tag="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2087
    nop

    .line 2109
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2087
    :cond_5
    return-object v1

    .line 2098
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_6
    :goto_1
    :try_start_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v7, :cond_9

    .line 2099
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2100
    .local v0, "tagName":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 2101
    goto :goto_2

    .line 2102
    :cond_7
    const-string/jumbo v5, "wifiAP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2103
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2104
    goto :goto_1

    .line 2106
    :cond_8
    const-string v5, "bssid"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2107
    .local v5, "bssid":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2108
    nop

    .end local v0    # "tagName":Ljava/lang/String;
    .end local v5    # "bssid":Ljava/lang/String;
    goto :goto_1

    .line 2109
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2111
    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    :cond_a
    goto :goto_4

    .line 2077
    .restart local v2    # "keyStream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_b

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "trustedNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :cond_b
    :goto_3
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0

    .line 2109
    .end local v2    # "keyStream":Ljava/io/FileInputStream;
    .restart local v1    # "trustedNetworks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;
    :catch_0
    move-exception v0

    .line 2110
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Caught an exception parsing the XML key file: "

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2112
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v1
.end method

.method private init()V
    .locals 1

    .line 1843
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 1844
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getKeyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    .line 1845
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getTrustedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    .line 1846
    const-string v0, "/adb_keys"

    invoke-direct {p0, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getSystemKeysFromFile(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    .line 1847
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->addUserKeysToKeyStore()V

    .line 1848
    return-void
.end method

.method private initKeyFile()V
    .locals 2

    .line 1892
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1897
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    .line 1899
    :cond_1
    return-void
.end method


# virtual methods
.method public addTrustedNetwork(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1853
    return-void
.end method

.method public deleteKeyStore()V
    .locals 1

    .line 2243
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2244
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2245
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$1900(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 2246
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v0, :cond_0

    .line 2247
    return-void

    .line 2249
    :cond_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 2250
    return-void
.end method

.method public findKeyFromFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fingerprint"    # Ljava/lang/String;

    .line 1871
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1872
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1873
    .local v2, "f":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1874
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1876
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "f":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1877
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllowedConnectionTime()J
    .locals 4

    .line 2296
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_allowed_connection_time"

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastConnectionTime(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 2257
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextExpirationTime()J
    .locals 17

    .line 2218
    const-wide/16 v0, -0x1

    .line 2219
    .local v0, "minExpiration":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v2

    .line 2221
    .local v2, "allowedTime":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 2222
    return-wide v0

    .line 2224
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2225
    .local v6, "systemTime":J
    move-object/from16 v8, p0

    iget-object v9, v8, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2226
    .local v9, "keyMapIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2227
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2228
    .local v10, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 2231
    .local v11, "connectionTime":J
    add-long v13, v11, v2

    sub-long/2addr v13, v6

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 2232
    .local v13, "keyExpiration":J
    const-wide/16 v15, -0x1

    cmp-long v15, v0, v15

    if-eqz v15, :cond_1

    cmp-long v15, v13, v0

    if-gez v15, :cond_2

    .line 2233
    :cond_1
    move-wide v0, v13

    .line 2235
    .end local v10    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "connectionTime":J
    .end local v13    # "keyExpiration":J
    :cond_2
    goto :goto_0

    .line 2236
    :cond_3
    return-wide v0
.end method

.method public getPairedDevices()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/debug/PairDevice;",
            ">;"
        }
    .end annotation

    .line 1856
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1857
    .local v0, "pairedDevices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/debug/PairDevice;>;"
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1858
    .local v2, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$900(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1859
    .local v3, "fingerprints":Ljava/lang/String;
    const-string/jumbo v4, "nouser@nohostname"

    .line 1860
    .local v4, "hostname":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "\\s+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1861
    .local v5, "args":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 1862
    aget-object v4, v5, v7

    .line 1864
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Landroid/debug/PairDevice;

    iget-object v8, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 1865
    invoke-static {v8}, Lcom/android/server/adb/AdbDebuggingManager;->access$700(Lcom/android/server/adb/AdbDebuggingManager;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-direct {v7, v4, v3, v8}, Landroid/debug/PairDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1864
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    .end local v2    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "fingerprints":Ljava/lang/String;
    .end local v4    # "hostname":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/String;
    goto :goto_0

    .line 1867
    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1924
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isKeyAuthorized(Ljava/lang/String;)Z
    .locals 11
    .param p1, "key"    # Ljava/lang/String;

    .line 2309
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2310
    return v1

    .line 2312
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getLastConnectionTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 2313
    .local v2, "lastConnectionTime":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 2314
    return v6

    .line 2316
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->getAllowedConnectionTime()J

    move-result-wide v7

    .line 2319
    .local v7, "allowedConnectionTime":J
    cmp-long v0, v7, v4

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v9, v2, v7

    cmp-long v0, v4, v9

    if-gez v0, :cond_2

    goto :goto_0

    .line 2323
    :cond_2
    return v6

    .line 2321
    :cond_3
    :goto_0
    return v1
.end method

.method public isTrustedNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    .line 2333
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public persistKeyStore()V
    .locals 11

    .line 2150
    const-string/jumbo v0, "wifiAP"

    const-string v1, "adbKey"

    const-string/jumbo v2, "keyStore"

    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    .line 2151
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2152
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->deleteKeyStore()V

    .line 2153
    return-void

    .line 2155
    :cond_0
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    const-string v4, "AdbDebuggingManager"

    if-nez v3, :cond_1

    .line 2156
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->initKeyFile()V

    .line 2157
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    if-nez v3, :cond_1

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to obtain the key file, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", for writing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    return-void

    .line 2162
    :cond_1
    const/4 v3, 0x0

    .line 2164
    .local v3, "keyStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2165
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v3, v6

    .line 2166
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2167
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2169
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2170
    const-string/jumbo v7, "version"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2171
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2172
    .local v7, "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2173
    const-string/jumbo v9, "key"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2174
    const-string/jumbo v9, "lastConnection"

    .line 2175
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2174
    invoke-interface {v5, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2176
    invoke-interface {v5, v8, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2177
    nop

    .end local v7    # "keyEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 2178
    :cond_2
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mTrustedNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2179
    .local v6, "bssid":Ljava/lang/String;
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2180
    const-string v7, "bssid"

    invoke-interface {v5, v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2181
    invoke-interface {v5, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2182
    nop

    .end local v6    # "bssid":Ljava/lang/String;
    goto :goto_1

    .line 2183
    :cond_3
    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2184
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2185
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2189
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_2

    .line 2186
    :catch_0
    move-exception v0

    .line 2187
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Caught an exception writing the key map: "

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2188
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mAtomicKeyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2190
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1881
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->access$1800(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V

    .line 1884
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1886
    :cond_0
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "connectionTime"    # J

    .line 2264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->setLastConnectionTime(Ljava/lang/String;JZ)V

    .line 2265
    return-void
.end method

.method public setLastConnectionTime(Ljava/lang/String;JZ)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "connectionTime"    # J
    .param p4, "force"    # Z

    .line 2275
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    if-nez p4, :cond_0

    .line 2276
    return-void

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mSystemKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2281
    return-void

    .line 2285
    :cond_1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2286
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->access$2000(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)V

    .line 2288
    :cond_2
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->mKeyMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    return-void
.end method

.method public updateKeyStore()V
    .locals 1

    .line 1932
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->filterOutOldKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbKeyStore;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v0}, Lcom/android/server/adb/AdbDebuggingManager;->access$600(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 1935
    :cond_0
    return-void
.end method
