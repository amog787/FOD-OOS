.class Lcom/android/server/input/ConfigurationProcessor;
.super Ljava/lang/Object;
.source "ConfigurationProcessor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationProcessor"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 54
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
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

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 41
    .local v1, "confReader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 42
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 43
    const-string v3, "devices"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 45
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 46
    const-string v3, "device"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 47
    nop

    .line 54
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 55
    .end local v1    # "confReader":Ljava/io/InputStreamReader;
    return-object v0

    .line 49
    .restart local v1    # "confReader":Ljava/io/InputStreamReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :try_start_1
    const-string/jumbo v3, "name"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 51
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 40
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v2

    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "confReader":Ljava/io/InputStreamReader;
    .end local p0    # "xml":Ljava/io/InputStream;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    .restart local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "confReader":Ljava/io/InputStreamReader;
    .restart local p0    # "xml":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    invoke-static {v2, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method static processInputPortAssociations(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .param p0, "xml"    # Ljava/io/InputStream;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v1, "confReader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 94
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 95
    const-string/jumbo v3, "ports"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 98
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "entryName":Ljava/lang/String;
    const-string/jumbo v4, "port"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 101
    nop

    .line 118
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "entryName":Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 119
    .end local v1    # "confReader":Ljava/io/InputStreamReader;
    return-object v0

    .line 103
    .restart local v1    # "confReader":Ljava/io/InputStreamReader;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "entryName":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v4, "input"

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "inputPort":Ljava/lang/String;
    const-string v6, "display"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, "displayPort":Ljava/lang/String;
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

    goto :goto_1

    .line 111
    :cond_1
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    nop

    .line 116
    :try_start_4
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    nop

    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "inputPort":Ljava/lang/String;
    .end local v5    # "displayPort":Ljava/lang/String;
    goto :goto_0

    .line 112
    .restart local v3    # "entryName":Ljava/lang/String;
    .restart local v4    # "inputPort":Ljava/lang/String;
    .restart local v5    # "displayPort":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 113
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v8, "Display port should be an integer"

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto :goto_0

    .line 107
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_1
    const-string v6, "Ignoring incomplete entry"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    goto :goto_0

    .line 92
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "entryName":Ljava/lang/String;
    .end local v4    # "inputPort":Ljava/lang/String;
    .end local v5    # "displayPort":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .end local v0    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "confReader":Ljava/io/InputStreamReader;
    .end local p0    # "xml":Ljava/io/InputStream;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    .restart local v0    # "associations":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v1    # "confReader":Ljava/io/InputStreamReader;
    .restart local p0    # "xml":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    invoke-static {v2, v1}, Lcom/android/server/input/ConfigurationProcessor;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
.end method
