.class public Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
.super Lcom/android/server/biometrics/BiometricUserState;
.source "FingerprintUserState.java"


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FINGER_ID:Ljava/lang/String; = "fingerId"

.field private static final ATTR_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final FINGERPRINT_FILE:Ljava/lang/String; = "settings_fingerprint.xml"

.field private static final TAG:Ljava/lang/String; = "FingerprintState"

.field private static final TAG_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final TAG_FINGERPRINTS:Ljava/lang/String; = "fingerprints"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
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
    instance-of v0, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    .line 77
    invoke-super {p0, p1}, Lcom/android/server/biometrics/BiometricUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    goto :goto_0

    .line 79
    :cond_0
    const-string v0, "FingerprintState"

    const-string v1, "Attempted to add non-fingerprint identifier"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void
.end method

.method protected doWriteState()V
    .locals 11

    .line 96
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 100
    .local v0, "destination":Landroid/util/AtomicFile;
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 102
    .local v1, "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 108
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 109
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 110
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 111
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    const-string v4, "fingerprints"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 115
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 116
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/Fingerprint;

    .line 117
    .local v7, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string v8, "fingerprint"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string v8, "fingerId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string/jumbo v8, "name"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v8, "groupId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v8, "deviceId"

    invoke-virtual {v7}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v8, "fingerprint"

    invoke-interface {v3, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    nop

    .end local v7    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 125
    .end local v6    # "i":I
    :cond_0
    const-string v6, "fingerprints"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 127
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "count":I
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 136
    nop

    .line 137
    return-void

    .line 130
    :catchall_0
    move-exception v3

    .line 131
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FingerprintState"

    const-string v5, "Failed to write settings, restoring backup"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 133
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to write fingerprints"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "destination":Landroid/util/AtomicFile;
    .end local v1    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "destination":Landroid/util/AtomicFile;
    .restart local v1    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    :catchall_1
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 136
    throw v3

    .line 102
    .end local v1    # "fingerprints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
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
    const-string/jumbo v0, "settings_fingerprint.xml"

    return-object v0
.end method

.method protected getBiometricsTag()Ljava/lang/String;
    .locals 1

    .line 61
    const-string v0, "fingerprints"

    return-object v0
.end method

.method protected getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "array"    # Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/fingerprint/Fingerprint;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 87
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 88
    .local v2, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v9, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v6

    .line 89
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getDeviceId()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 88
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v2    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected getNameTemplateResource()I
    .locals 1

    .line 71
    const v0, 0x1040364

    return v0
.end method

.method protected parseBiometricsLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 144
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 146
    .local v1, "outerDepth":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 147
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v14, p0

    goto :goto_3

    .line 148
    :cond_1
    :goto_1
    if-eq v3, v2, :cond_4

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 149
    goto :goto_0

    .line 152
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "fingerprint"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "name":Ljava/lang/String;
    const-string v6, "groupId"

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "groupId":Ljava/lang/String;
    const-string v6, "fingerId"

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 157
    .local v13, "fingerId":Ljava/lang/String;
    const-string v6, "deviceId"

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "deviceId":Ljava/lang/String;
    move-object/from16 v14, p0

    iget-object v15, v14, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v10, Landroid/hardware/fingerprint/Fingerprint;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 159
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v6, v10

    move-object v7, v5

    move-object v0, v10

    move-wide/from16 v10, v16

    invoke-direct/range {v6 .. v11}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 158
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v12    # "groupId":Ljava/lang/String;
    .end local v13    # "fingerId":Ljava/lang/String;
    :cond_3
    move-object/from16 v14, p0

    .line 161
    .end local v2    # "tagName":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    goto :goto_0

    .line 148
    :cond_4
    move-object/from16 v14, p0

    move-object/from16 v0, p1

    goto :goto_0

    .line 146
    :cond_5
    move-object/from16 v14, p0

    .line 162
    :goto_3
    return-void
.end method
