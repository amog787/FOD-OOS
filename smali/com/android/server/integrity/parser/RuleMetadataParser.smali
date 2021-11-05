.class public Lcom/android/server/integrity/parser/RuleMetadataParser;
.super Ljava/lang/Object;
.source "RuleMetadataParser.java"


# static fields
.field public static final RULE_PROVIDER_TAG:Ljava/lang/String; = "P"

.field public static final VERSION_TAG:Ljava/lang/String; = "V"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/android/server/integrity/model/RuleMetadata;
    .locals 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    const-string v0, ""

    .line 43
    .local v0, "ruleProvider":Ljava/lang/String;
    const-string v1, ""

    .line 45
    .local v1, "version":Ljava/lang/String;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 46
    .local v2, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 49
    :cond_0
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "eventType":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    .line 50
    const/4 v3, 0x2

    if-ne v4, v3, :cond_0

    .line 51
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "tag":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x50

    if-eq v7, v8, :cond_3

    const/16 v8, 0x56

    if-eq v7, v8, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v7, "V"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_3
    const-string v7, "P"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    if-ne v6, v5, :cond_4

    .line 57
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 58
    goto :goto_2

    .line 60
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown tag in metadata: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 54
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 55
    nop

    .line 62
    .end local v3    # "tag":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 65
    :cond_6
    new-instance v3, Lcom/android/server/integrity/model/RuleMetadata;

    invoke-direct {v3, v0, v1}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
