.class public Lcom/android/server/compat/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private compatChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/compat/config/Change;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Config;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/android/server/compat/config/Config;

    invoke-direct {v0}, Lcom/android/server/compat/config/Config;-><init>()V

    .line 15
    .local v0, "instance":Lcom/android/server/compat/config/Config;
    const/4 v1, 0x0

    .line 16
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 18
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_2

    if-eq v4, v6, :cond_2

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "compat-change"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 23
    invoke-static {p0}, Lcom/android/server/compat/config/Change;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;

    move-result-object v5

    .line 24
    .local v5, "value":Lcom/android/server/compat/config/Change;
    invoke-virtual {v0}, Lcom/android/server/compat/config/Config;->getCompatChange()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v5    # "value":Lcom/android/server/compat/config/Change;
    goto :goto_1

    .line 26
    :cond_1
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 28
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 29
    :cond_2
    if-ne v4, v6, :cond_3

    .line 32
    return-object v0

    .line 30
    :cond_3
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Config is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCompatChange()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/compat/config/Change;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/config/Config;->compatChange:Ljava/util/List;

    return-object v0
.end method
