.class public Lcom/android/server/display/config/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field private nits:Ljava/math/BigDecimal;

.field private value:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/Point;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/android/server/display/config/Point;

    invoke-direct {v0}, Lcom/android/server/display/config/Point;-><init>()V

    .line 25
    .local v0, "instance":Lcom/android/server/display/config/Point;
    const/4 v1, 0x0

    .line 26
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 28
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_3

    if-eq v4, v6, :cond_3

    .line 30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 34
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 35
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/Point;->setValue(Ljava/math/BigDecimal;)V

    .line 36
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_1
    const-string/jumbo v5, "nits"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 37
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 39
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/Point;->setNits(Ljava/math/BigDecimal;)V

    .line 40
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 43
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 44
    :cond_3
    if-ne v4, v6, :cond_4

    .line 47
    return-object v0

    .line 45
    :cond_4
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Point is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getNits()Ljava/math/BigDecimal;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getValue()Ljava/math/BigDecimal;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final setNits(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "nits"    # Ljava/math/BigDecimal;

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/Point;->nits:Ljava/math/BigDecimal;

    .line 21
    return-void
.end method

.method public final setValue(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "value"    # Ljava/math/BigDecimal;

    .line 12
    iput-object p1, p0, Lcom/android/server/display/config/Point;->value:Ljava/math/BigDecimal;

    .line 13
    return-void
.end method
