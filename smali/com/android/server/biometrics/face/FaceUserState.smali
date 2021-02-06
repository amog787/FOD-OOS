.class public Lcom/android/server/biometrics/face/FaceUserState;
.super Lcom/android/server/biometrics/BiometricUserState;
.source "FaceUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FACE_ID:Ljava/lang/String; = "faceId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FACE_FILE:Ljava/lang/String; = "settings_face.xml"

.field private static final TAG:Ljava/lang/String; = "FaceState"

.field private static final TAG_FACE:Ljava/lang/String; = "face"

.field private static final TAG_FACES:Ljava/lang/String; = "faces"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricUserState;-><init>(Landroid/content/Context;I)V

    .line 57
    return-void
.end method


# virtual methods
.method public addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 76
    instance-of v0, p1, Landroid/hardware/face/Face;

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    goto :goto_0

    .line 79
    :cond_0
    const-string v0, "FaceState"

    const-string v1, "Attempted to add non-face identifier"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void
.end method

.method protected doWriteState()V
    .locals 11

    .line 95
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 99
    .local v0, "destination":Landroid/util/AtomicFile;
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/face/FaceUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    .local v1, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 107
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 108
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 109
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 110
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 111
    const-string v4, "faces"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 114
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 115
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/face/Face;

    .line 116
    .local v7, "f":Landroid/hardware/face/Face;
    const-string v8, "face"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string v8, "faceId"

    invoke-virtual {v7}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v8, "deviceId"

    invoke-virtual {v7}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v8, "face"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    nop

    .end local v7    # "f":Landroid/hardware/face/Face;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v6    # "i":I
    :cond_0
    const-string v6, "faces"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 125
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "count":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    nop

    .line 135
    return-void

    .line 128
    :catchall_0
    move-exception v3

    .line 129
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FaceState"

    const-string v5, "Failed to write settings, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 131
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to write faces"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "destination":Landroid/util/AtomicFile;
    .end local v1    # "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/biometrics/face/FaceUserState;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "destination":Landroid/util/AtomicFile;
    .restart local v1    # "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/biometrics/face/FaceUserState;
    :catchall_1
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    throw v3

    .line 101
    .end local v1    # "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method protected getBiometricFile()Ljava/lang/String;
    .locals 1

    .line 66
    const-string/jumbo v0, "settings_face.xml"

    return-object v0
.end method

.method protected getBiometricsTag()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "faces"

    return-object v0
.end method

.method protected getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "array"    # Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 88
    .local v2, "f":Landroid/hardware/face/Face;
    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "f":Landroid/hardware/face/Face;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected getNameTemplateResource()I
    .locals 1

    .line 71
    const v0, 0x104033e

    return v0
.end method

.method protected parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 143
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 145
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "face"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "name":Ljava/lang/String;
    const-string v5, "faceId"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "faceId":Ljava/lang/String;
    const-string v6, "deviceId"

    invoke-interface {p1, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "deviceId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/biometrics/face/FaceUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v7, Landroid/hardware/face/Face;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v7, v4, v8, v9, v10}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "faceId":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 157
    :cond_4
    return-void
.end method
