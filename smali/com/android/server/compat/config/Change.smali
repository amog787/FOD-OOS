.class public Lcom/android/server/compat/config/Change;
.super Ljava/lang/Object;
.source "Change.java"


# instance fields
.field private description:Ljava/lang/String;

.field private disabled:Z

.field private enableAfterTargetSdk:I

.field private id:J

.field private loggingOnly:Z

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/config/Change;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/android/server/compat/config/Change;

    invoke-direct {v0}, Lcom/android/server/compat/config/Change;-><init>()V

    .line 70
    .local v0, "instance":Lcom/android/server/compat/config/Change;
    const/4 v1, 0x0

    .line 71
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_0

    .line 73
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 74
    .local v3, "value":J
    invoke-virtual {v0, v3, v4}, Lcom/android/server/compat/config/Change;->setId(J)V

    .line 76
    .end local v3    # "value":J
    :cond_0
    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v1, :cond_1

    .line 78
    move-object v3, v1

    .line 79
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setName(Ljava/lang/String;)V

    .line 81
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string v3, "disabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_2

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 84
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setDisabled(Z)V

    .line 86
    .end local v3    # "value":Z
    :cond_2
    const-string/jumbo v3, "loggingOnly"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 89
    .restart local v3    # "value":Z
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setLoggingOnly(Z)V

    .line 91
    .end local v3    # "value":Z
    :cond_3
    const-string v3, "enableAfterTargetSdk"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 94
    .local v3, "value":I
    invoke-virtual {v0, v3}, Lcom/android/server/compat/config/Change;->setEnableAfterTargetSdk(I)V

    .line 96
    .end local v3    # "value":I
    :cond_4
    const-string v3, "description"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_5

    .line 98
    move-object v2, v1

    .line 99
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setDescription(Ljava/lang/String;)V

    .line 101
    .end local v2    # "value":Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/android/server/compat/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_6

    .line 103
    move-object v2, v1

    .line 104
    .restart local v2    # "value":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/compat/config/Change;->setValue(Ljava/lang/String;)V

    .line 106
    .end local v2    # "value":Ljava/lang/String;
    :cond_6
    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/android/server/compat/config/Change;->disabled:Z

    return v0
.end method

.method public getEnableAfterTargetSdk()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/android/server/compat/config/Change;->id:J

    return-wide v0
.end method

.method public getLoggingOnly()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->description:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/compat/config/Change;->disabled:Z

    .line 34
    return-void
.end method

.method public setEnableAfterTargetSdk(I)V
    .locals 0
    .param p1, "enableAfterTargetSdk"    # I

    .line 49
    iput p1, p0, Lcom/android/server/compat/config/Change;->enableAfterTargetSdk:I

    .line 50
    return-void
.end method

.method public setId(J)V
    .locals 0
    .param p1, "id"    # J

    .line 17
    iput-wide p1, p0, Lcom/android/server/compat/config/Change;->id:J

    .line 18
    return-void
.end method

.method public setLoggingOnly(Z)V
    .locals 0
    .param p1, "loggingOnly"    # Z

    .line 41
    iput-boolean p1, p0, Lcom/android/server/compat/config/Change;->loggingOnly:Z

    .line 42
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->name:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/compat/config/Change;->value:Ljava/lang/String;

    .line 66
    return-void
.end method
