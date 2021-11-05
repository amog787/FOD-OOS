.class public Lcom/android/server/protolog/ProtoLogViewerConfigReader;
.super Ljava/lang/Object;
.source "ProtoLogViewerConfigReader.java"


# instance fields
.field private mLogMessageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized getViewerString(I)Ljava/lang/String;
    .locals 2
    .param p1, "messageHash"    # I

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 46
    .end local p0    # "this":Lcom/android/server/protolog/ProtoLogViewerConfigReader;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 42
    .end local p1    # "messageHash":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized knownViewerStringsNumber()I
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 105
    .end local p0    # "this":Lcom/android/server/protolog/ProtoLogViewerConfigReader;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadViewerConfig(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "viewerConfigFilename"    # Ljava/lang/String;

    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 60
    .local v0, "config":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v2, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    .end local p0    # "this":Lcom/android/server/protolog/ProtoLogViewerConfigReader;
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "json":Lorg/json/JSONObject;
    const-string v5, "messages"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 70
    .local v5, "messages":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    .line 71
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 72
    .local v6, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 73
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .local v7, "key":Ljava/lang/String;
    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 76
    .local v8, "hash":I
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 77
    .local v9, "val":Lorg/json/JSONObject;
    const-string v10, "message"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 78
    .local v10, "msg":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v8    # "hash":I
    .end local v9    # "val":Lorg/json/JSONObject;
    .end local v10    # "msg":Ljava/lang/String;
    goto :goto_2

    .line 79
    :catch_0
    move-exception v8

    .line 82
    .end local v7    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 83
    :cond_2
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/protolog/ProtoLogViewerConfigReader;->mLogMessageMap:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " log definitions from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "config":Ljava/io/InputStreamReader;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "messages":Lorg/json/JSONObject;
    .end local v6    # "it":Ljava/util/Iterator;
    goto :goto_3

    .line 91
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: JSON parsing exception while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_4

    .line 88
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: IOException while reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 85
    :catch_3
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load log definitions: File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/protolog/ProtoLogImpl;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_3
    nop

    .line 96
    :goto_4
    monitor-exit p0

    return-void

    .line 53
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "viewerConfigFilename":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
