.class Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .locals 0
    .param p1, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .locals 2
    .param p1, "orig"    # Lcom/android/server/pm/PackageSignatures;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 45
    :goto_0
    return-void
.end method

.method private readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/PackageParser$SigningDetails$Builder;)I
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "count"    # I
    .param p5, "isPastSigs"    # Z
    .param p6, "builder"    # Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;IZ",
            "Landroid/content/pm/PackageParser$SigningDetails$Builder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    .local p2, "readSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .local p3, "signatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    const-string v12, "Error in package manager settings: <cert> index "

    const/4 v0, 0x0

    .line 159
    .local v0, "pos":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p6

    move v15, v0

    .line 161
    .end local v0    # "pos":I
    .end local p6    # "builder":Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .local v13, "outerDepth":I
    .local v14, "builder":Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .local v15, "pos":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v7, v0

    .local v7, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    .line 163
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v13, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v16, v7

    goto/16 :goto_f

    .line 164
    :cond_1
    :goto_1
    if-eq v7, v0, :cond_11

    const/4 v0, 0x4

    if-ne v7, v0, :cond_2

    .line 166
    goto/16 :goto_e

    .line 169
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "tagName":Ljava/lang/String;
    const-string v0, "cert"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, " is not a number at "

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 171
    if-ge v15, v11, :cond_b

    .line 172
    const-string v0, "index"

    invoke-interface {v8, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "index":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 174
    const/16 v16, 0x0

    .line 176
    .local v16, "signatureParsed":Z
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "idx":I
    const-string/jumbo v1, "key"

    invoke-interface {v8, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 179
    if-ltz v0, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 180
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    .line 181
    .local v2, "sig":Landroid/content/pm/Signature;
    if-eqz v2, :cond_3

    .line 182
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const/16 v16, 0x1

    goto :goto_2

    .line 185
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v2

    .end local v2    # "sig":Landroid/content/pm/Signature;
    .local v18, "sig":Landroid/content/pm/Signature;
    const-string v2, " is not defined at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 190
    .end local v18    # "sig":Landroid/content/pm/Signature;
    :goto_2
    goto :goto_4

    .line 191
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is out of bounds at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_4

    .line 199
    :cond_5
    new-instance v2, Landroid/content/pm/Signature;

    invoke-direct {v2, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 200
    .restart local v2    # "sig":Landroid/content/pm/Signature;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v0, :cond_6

    .line 201
    const/4 v4, 0x0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 203
    :cond_6
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    const/16 v16, 0x1

    .line 218
    .end local v0    # "idx":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "sig":Landroid/content/pm/Signature;
    :goto_4
    goto :goto_5

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has an invalid signature at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_5

    .line 207
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 220
    :goto_5
    if-eqz p5, :cond_9

    .line 221
    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "flagsStr":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 224
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "flagsValue":I
    if-eqz v16, :cond_7

    .line 228
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/Signature;

    invoke-virtual {v2, v0}, Landroid/content/pm/Signature;->setFlags(I)V

    goto :goto_6

    .line 230
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: signature not available at index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to set flags at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_6

    .line 236
    .end local v0    # "flagsValue":I
    :catch_2
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <cert> flags "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    const/4 v4, 0x5

    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 241
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_6
    goto :goto_7

    .line 243
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <cert> has no flags at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 248
    .end local v1    # "flagsStr":Ljava/lang/String;
    .end local v16    # "signatureParsed":Z
    :cond_9
    :goto_7
    goto :goto_8

    .line 249
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> has no index at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 253
    .end local v3    # "index":Ljava/lang/String;
    :goto_8
    goto :goto_9

    .line 254
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 259
    :goto_9
    add-int/lit8 v15, v15, 0x1

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move/from16 v16, v7

    goto/16 :goto_d

    .line 261
    :cond_c
    const-string/jumbo v0, "pastSigs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 262
    if-nez p5, :cond_f

    .line 264
    const-string v0, "count"

    const/4 v1, 0x0

    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "countStr":Ljava/lang/String;
    if-nez v4, :cond_d

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> has no count at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 270
    goto/16 :goto_e

    .line 273
    :cond_d
    const/4 v3, 0x5

    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, "pastSigsCount":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v2, v1

    .line 275
    .local v2, "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-object/from16 p6, v2

    .end local v2    # "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .local p6, "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move-object/from16 v19, v4

    .end local v4    # "countStr":Ljava/lang/String;
    .local v19, "countStr":Ljava/lang/String;
    move-object/from16 v4, p6

    move-object v8, v5

    move v5, v0

    move-object/from16 v17, v6

    .end local v6    # "tagName":Ljava/lang/String;
    .local v17, "tagName":Ljava/lang/String;
    move/from16 v6, v16

    move/from16 v16, v7

    .end local v7    # "type":I
    .local v16, "type":I
    move-object v7, v14

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/PackageParser$SigningDetails$Builder;)I

    move-result v1

    .line 278
    .local v1, "pastSigsPos":I
    nop

    .line 279
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/Signature;

    .line 278
    move-object/from16 v3, p6

    .end local p6    # "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .local v3, "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 280
    .local v2, "pastSignatures":[Landroid/content/pm/Signature;
    invoke-virtual {v14, v2}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v4

    move-object v14, v4

    .line 282
    if-ge v1, v0, :cond_e

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <pastSigs> count does not match number of <cert> entries "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 283
    const/4 v5, 0x5

    :try_start_4
    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    .line 288
    .end local v0    # "pastSigsCount":I
    .end local v1    # "pastSigsPos":I
    .end local v2    # "pastSignatures":[Landroid/content/pm/Signature;
    .end local v3    # "pastSignatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    :catch_3
    move-exception v0

    goto :goto_b

    .line 293
    :cond_e
    :goto_a
    goto :goto_c

    .line 288
    :catch_4
    move-exception v0

    const/4 v5, 0x5

    goto :goto_b

    .end local v16    # "type":I
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v19    # "countStr":Ljava/lang/String;
    .restart local v4    # "countStr":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :catch_5
    move-exception v0

    move-object/from16 v19, v4

    move-object v8, v5

    move-object/from16 v17, v6

    move/from16 v16, v7

    move v5, v3

    .line 289
    .end local v4    # "countStr":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "type":I
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v19    # "countStr":Ljava/lang/String;
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <pastSigs> count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    .end local v19    # "countStr":Ljava/lang/String;
    .local v2, "countStr":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 294
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "countStr":Ljava/lang/String;
    :goto_c
    goto :goto_d

    .line 295
    .end local v16    # "type":I
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_f
    move-object/from16 v17, v6

    move/from16 v16, v7

    const/4 v5, 0x5

    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v16    # "type":I
    .restart local v17    # "tagName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<pastSigs> encountered multiple times under the same <sigs> at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 298
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_d

    .line 301
    .end local v16    # "type":I
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_10
    move-object/from16 v17, v6

    move/from16 v16, v7

    const/4 v5, 0x5

    .end local v6    # "tagName":Ljava/lang/String;
    .end local v7    # "type":I
    .restart local v16    # "type":I
    .restart local v17    # "tagName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <sigs>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 304
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 306
    .end local v17    # "tagName":Ljava/lang/String;
    :goto_d
    move-object/from16 v8, p1

    goto/16 :goto_0

    .line 164
    .end local v16    # "type":I
    .restart local v7    # "type":I
    :cond_11
    move/from16 v16, v7

    .line 161
    .end local v7    # "type":I
    :goto_e
    move-object/from16 v8, p1

    goto/16 :goto_0

    .restart local v7    # "type":I
    :cond_12
    move/from16 v16, v7

    .line 307
    .end local v7    # "type":I
    .restart local v16    # "type":I
    :goto_f
    return v15
.end method

.method private writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;
    .param p4, "isPastSigs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    .local p2, "writtenSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_4

    .line 81
    const/4 v1, 0x0

    const-string v2, "cert"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    aget-object v3, p3, v0

    .line 83
    .local v3, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    .line 84
    .local v4, "sigHash":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 86
    .local v5, "numWritten":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    const-string v7, "index"

    if-ge v6, v5, :cond_1

    .line 87
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/Signature;

    .line 88
    .local v8, "writtenSig":Landroid/content/pm/Signature;
    invoke-virtual {v8}, Landroid/content/pm/Signature;->hashCode()I

    move-result v9

    if-ne v9, v4, :cond_0

    invoke-virtual {v8, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v1, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    goto :goto_2

    .line 86
    .end local v8    # "writtenSig":Landroid/content/pm/Signature;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 93
    :cond_1
    :goto_2
    if-lt v6, v5, :cond_2

    .line 94
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "key"

    invoke-interface {p1, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    :cond_2
    if-eqz p4, :cond_3

    .line 101
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "flags"

    invoke-interface {p1, v1, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    :cond_3
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 80
    .end local v3    # "sig":Landroid/content/pm/Signature;
    .end local v4    # "sigHash":I
    .end local v5    # "numWritten":I
    .end local v6    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 109
    .local p2, "readSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails$Builder;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;-><init>()V

    move-object v10, v0

    .line 112
    .local v10, "builder":Landroid/content/pm/PackageParser$SigningDetails$Builder;
    const/4 v0, 0x0

    const-string v1, "count"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "countStr":Ljava/lang/String;
    const/4 v12, 0x5

    if-nez v11, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <sigs> has no count at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 117
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 122
    .local v13, "count":I
    const-string/jumbo v1, "schemeVersion"

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 124
    .local v14, "schemeVersionStr":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <sigs> has no schemeVersion at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    move v15, v0

    .local v0, "signatureSchemeVersion":I
    goto :goto_0

    .line 130
    .end local v0    # "signatureSchemeVersion":I
    :cond_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    .line 132
    .local v15, "signatureSchemeVersion":I
    :goto_0
    invoke-virtual {v10, v15}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatureSchemeVersion(I)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 134
    .local v7, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move v5, v13

    move-object/from16 v16, v7

    .end local v7    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .local v16, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/util/ArrayList;IZLandroid/content/pm/PackageParser$SigningDetails$Builder;)I

    move-result v1

    .line 135
    .local v1, "pos":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v2, v16

    .end local v16    # "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    .local v2, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/content/pm/Signature;

    .line 136
    .local v3, "signatures":[Landroid/content/pm/Signature;
    invoke-virtual {v10, v3}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    .line 137
    if-ge v1, v13, :cond_2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <sigs> count does not match number of  <cert> entries"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 144
    :cond_2
    :try_start_0
    invoke-virtual {v10}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->build()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/security/cert/CertificateException;
    const-string v4, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s)."

    invoke-static {v12, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 149
    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v4, v8, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 151
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 312
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 313
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "PackageSignatures{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    const-string v1, ", signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 320
    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    .line 322
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v3

    .line 321
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const-string v1, ", past signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3

    .line 328
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 329
    if-lez v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :cond_2
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    .line 331
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v3

    .line 330
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v3, " flags: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    .line 334
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v1    # "i":I
    :cond_3
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    .local p3, "writtenSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "count"

    invoke-interface {p1, v0, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v3, "schemeVersion"

    invoke-interface {p1, v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    invoke-direct {p0, p1, p3, v1, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 67
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    .line 68
    const-string/jumbo v1, "pastSigs"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v3, v3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    const/4 v3, 0x1

    invoke-direct {p0, p1, p3, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;Z)V

    .line 73
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    :cond_1
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    return-void
.end method
