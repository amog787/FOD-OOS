.class Lcom/android/server/input/ConfigurationProcessor;
.super Ljava/lang/Object;
.source "ConfigurationProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationProcessor"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static processExcludedDeviceNames(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 42
    .local v1, "confReader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 43
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 44
    const-string v3, "devices"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 46
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 47
    const-string v3, "device"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 48
    nop

    .line 55
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 56
    .end local v1    # "confReader":Ljava/io/InputStreamReader;
    return-object v0

    .line 50
    .restart local v1    # "confReader":Ljava/io/InputStreamReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    const-string/jumbo v4, "name"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 41
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
.end method

.method static processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 9
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "associations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v1, "confReader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 95
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 96
    const-string/jumbo v3, "ports"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 99
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 100
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "entryName":Ljava/lang/String;
    const-string/jumbo v4, "port"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 102
    nop

    .line 118
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "entryName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 119
    .end local v1    # "confReader":Ljava/io/InputStreamReader;
    return-object v0

    .line 104
    .restart local v1    # "confReader":Ljava/io/InputStreamReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "entryName":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "input"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "inputPort":Ljava/lang/String;
    const-string v6, "display"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "displayPortStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "ConfigurationProcessor"

    if-nez v6, :cond_2

    :try_start_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_2

    .line 112
    :cond_1
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v6

    .line 113
    .local v6, "displayPort":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    .end local v6    # "displayPort":I
    goto :goto_1

    .line 114
    :catch_0
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v8, "Display port should be an integer"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "inputPort":Ljava/lang/String;
    .end local v5    # "displayPortStr":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    goto :goto_0

    .line 108
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "inputPort":Ljava/lang/String;
    .restart local v5    # "displayPortStr":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string v6, "Ignoring incomplete entry"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    goto :goto_0

    .line 93
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "inputPort":Ljava/lang/String;
    .end local v5    # "displayPortStr":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
.end method
