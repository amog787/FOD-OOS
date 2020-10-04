.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field private final mSetupWizardPackageName:Ljava/lang/String;

.field final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 8
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 67
    const/high16 v0, 0xfff0000

    and-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 68
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 69
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 70
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    .line 73
    if-eqz p3, :cond_2

    .line 74
    array-length v1, p3

    .line 75
    .local v1, "N":I
    new-array v2, v1, [Ljava/lang/String;

    .line 76
    .local v2, "myPackages":[Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    .line 77
    .local v3, "myClasses":[Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    .line 78
    .local v4, "myComponents":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 79
    aget-object v6, p3, v5

    .line 80
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_0

    .line 81
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 87
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 88
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 78
    .end local v6    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    .end local v5    # "i":I
    :cond_1
    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 91
    iput-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 92
    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 93
    .end local v1    # "N":I
    .end local v2    # "myPackages":[Ljava/lang/String;
    .end local v3    # "myClasses":[Ljava/lang/String;
    .end local v4    # "myComponents":[Ljava/lang/String;
    goto :goto_1

    .line 94
    :cond_2
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 98
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 20
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 103
    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 104
    iget-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 105
    iget-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v5, :cond_0

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad activity name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 108
    :cond_0
    const-string/jumbo v5, "match"

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "matchStr":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    iput v7, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 110
    const-string/jumbo v7, "set"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "setCountStr":Ljava/lang/String;
    if-eqz v8, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 112
    .local v6, "setCount":I
    :cond_2
    const-string v9, "always"

    invoke-interface {v1, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "alwaysStr":Ljava/lang/String;
    const/4 v10, 0x1

    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    goto :goto_1

    :cond_3
    move v11, v10

    :goto_1
    iput-boolean v11, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 115
    if-lez v6, :cond_4

    new-array v11, v6, [Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v11, v4

    .line 116
    .local v11, "myPackages":[Ljava/lang/String;
    :goto_2
    if-lez v6, :cond_5

    new-array v12, v6, [Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v12, v4

    .line 117
    .local v12, "myClasses":[Ljava/lang/String;
    :goto_3
    if-lez v6, :cond_6

    new-array v13, v6, [Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v13, v4

    .line 119
    .local v13, "myComponents":[Ljava/lang/String;
    :goto_4
    const/4 v14, 0x0

    .line 121
    .local v14, "setPos":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 123
    .local v15, "outerDepth":I
    :goto_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move/from16 v17, v4

    .local v17, "type":I
    if-eq v4, v10, :cond_13

    const/4 v4, 0x3

    move/from16 v10, v17

    .end local v17    # "type":I
    .local v10, "type":I
    if-ne v10, v4, :cond_8

    .line 125
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v15, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v16, v5

    goto/16 :goto_a

    .line 126
    :cond_8
    :goto_6
    const/4 v4, 0x3

    if-eq v10, v4, :cond_12

    const/4 v4, 0x4

    if-ne v10, v4, :cond_9

    .line 128
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v7

    goto/16 :goto_9

    .line 131
    :cond_9
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "tagName":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 135
    move-object/from16 v16, v5

    const/4 v2, 0x0

    .end local v5    # "matchStr":Ljava/lang/String;
    .local v16, "matchStr":Ljava/lang/String;
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_b

    .line 137
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "No name in set tag in preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    move-object/from16 v19, v7

    goto/16 :goto_7

    .line 137
    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v19, v7

    goto :goto_7

    .line 141
    :cond_b
    move-object/from16 v18, v3

    if-lt v14, v6, :cond_d

    .line 142
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many set tags in preferred activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    move-object/from16 v19, v7

    goto :goto_7

    .line 142
    :cond_c
    move-object/from16 v19, v7

    goto :goto_7

    .line 147
    :cond_d
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 148
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_f

    .line 149
    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v3, :cond_e

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    const-string v7, "Bad set name "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in preferred activity "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_7

    .line 149
    :cond_e
    move-object/from16 v19, v7

    goto :goto_7

    .line 154
    :cond_f
    move-object/from16 v19, v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v14

    .line 155
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v14

    .line 156
    aput-object v5, v13, v14

    .line 157
    add-int/lit8 v14, v14, 0x1

    .line 160
    .end local v2    # "cn":Landroid/content/ComponentName;
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    .end local v5    # "name":Ljava/lang/String;
    :cond_10
    goto :goto_8

    .end local v16    # "matchStr":Ljava/lang/String;
    .local v5, "matchStr":Ljava/lang/String;
    :cond_11
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v7

    .end local v5    # "matchStr":Ljava/lang/String;
    .restart local v16    # "matchStr":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    invoke-interface {v2, v4, v1}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreferredComponent"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    .end local v4    # "tagName":Ljava/lang/String;
    :goto_8
    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    .line 126
    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v5    # "matchStr":Ljava/lang/String;
    :cond_12
    move-object/from16 v18, v3

    move-object/from16 v16, v5

    move-object/from16 v19, v7

    .line 123
    .end local v5    # "matchStr":Ljava/lang/String;
    .end local v10    # "type":I
    .restart local v16    # "matchStr":Ljava/lang/String;
    :goto_9
    move-object/from16 v2, p1

    move-object/from16 v5, v16

    move-object/from16 v3, v18

    move-object/from16 v7, v19

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_5

    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v5    # "matchStr":Ljava/lang/String;
    .restart local v17    # "type":I
    :cond_13
    move-object/from16 v16, v5

    move/from16 v10, v17

    .line 167
    .end local v5    # "matchStr":Ljava/lang/String;
    .end local v17    # "type":I
    .restart local v10    # "type":I
    .restart local v16    # "matchStr":Ljava/lang/String;
    :goto_a
    if-eq v14, v6, :cond_14

    .line 168
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_14

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough set tags (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 174
    :cond_14
    iput-object v11, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 175
    iput-object v12, v0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 176
    iput-object v13, v0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 177
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 178
    .local v2, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2}, Landroid/content/pm/PackageManagerInternal;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    .line 179
    return-void
.end method


# virtual methods
.method public discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 339
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 342
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 343
    .local v0, "NQ":I
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v1, v1

    .line 344
    .local v1, "NS":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v2, "aliveComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 346
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 347
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_2

    .line 349
    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v7, v7, v6

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 350
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v6

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    goto :goto_2

    .line 348
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 345
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    return-object v3

    .line 340
    .end local v0    # "NQ":I
    .end local v1    # "NS":I
    .end local v2    # "aliveComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_4
    :goto_3
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ComponentName;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ident"    # Ljava/lang/Object;

    .line 359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 361
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMatch=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 364
    iget v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    const-string v0, " mAlways="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Selected from:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 369
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public isSuperset(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 11
    .param p3, "excludeSetupWizardPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 283
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "queryFakeHome":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 284
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 286
    :cond_1
    if-nez p1, :cond_2

    .line 287
    return v2

    .line 289
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 290
    .local v0, "NQ":I
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 301
    .local v3, "NS":I
    if-nez p3, :cond_4

    if-ge v3, v0, :cond_4

    if-eqz p2, :cond_3

    .line 302
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    :cond_3
    return v1

    .line 307
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_a

    .line 308
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 309
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 310
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x0

    .line 315
    .local v7, "foundMatch":Z
    if-eqz p2, :cond_5

    invoke-interface {p2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 316
    goto :goto_3

    .line 322
    :cond_5
    if-eqz p3, :cond_6

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 323
    goto :goto_3

    .line 326
    :cond_6
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v3, :cond_8

    .line 327
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 328
    const/4 v7, 0x1

    .line 329
    goto :goto_2

    .line 326
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 332
    .end local v8    # "j":I
    :cond_8
    :goto_2
    if-nez v7, :cond_9

    return v1

    .line 307
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "foundMatch":Z
    :cond_9
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    .end local v4    # "i":I
    :cond_a
    return v2
.end method

.method public isSuperset(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "excludeSetupWizardPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 276
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public sameSet(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 12
    .param p3, "excludeSetupWizardPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 211
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p2, "queryFakeHome":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 212
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 214
    :cond_1
    if-nez p1, :cond_2

    .line 215
    return v1

    .line 217
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    .local v0, "NQ":I
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 219
    .local v3, "NS":I
    const/4 v4, 0x0

    .line 220
    .local v4, "numMatch":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_8

    .line 221
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 222
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 223
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v8, 0x0

    .line 228
    .local v8, "good":Z
    if-eqz p2, :cond_3

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 229
    goto :goto_3

    .line 235
    :cond_3
    if-eqz p3, :cond_4

    iget-object v9, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetupWizardPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 236
    goto :goto_3

    .line 239
    :cond_4
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v3, :cond_6

    .line 240
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 241
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 242
    add-int/lit8 v4, v4, 0x1

    .line 243
    const/4 v8, 0x1

    .line 244
    goto :goto_2

    .line 239
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 247
    .end local v9    # "j":I
    :cond_6
    :goto_2
    if-nez v8, :cond_7

    return v1

    .line 220
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "good":Z
    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 249
    .end local v5    # "i":I
    :cond_8
    if-ne v4, v3, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public sameSet(Ljava/util/List;Z)Z
    .locals 1
    .param p2, "excludeSetupWizardPackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)Z"
        }
    .end annotation

    .line 205
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .locals 10
    .param p1, "comps"    # [Landroid/content/ComponentName;

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 254
    :cond_0
    array-length v2, p1

    .line 255
    .local v2, "NQ":I
    array-length v0, v0

    .line 256
    .local v0, "NS":I
    const/4 v3, 0x0

    .line 257
    .local v3, "numMatch":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 258
    aget-object v5, p1, v4

    .line 259
    .local v5, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 260
    .local v6, "good":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v0, :cond_2

    .line 261
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 262
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    add-int/lit8 v3, v3, 0x1

    .line 264
    const/4 v6, 0x1

    .line 265
    goto :goto_2

    .line 260
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 268
    .end local v7    # "j":I
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    return v1

    .line 257
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "good":Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v4    # "i":I
    :cond_4
    if-ne v3, v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 187
    .local v0, "NS":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    if-eqz p2, :cond_2

    .line 189
    iget v1, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz v1, :cond_1

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "match"

    invoke-interface {p1, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v4, "always"

    invoke-interface {p1, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "set"

    invoke-interface {p1, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const/4 v1, 0x0

    .local v1, "s":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 195
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    iget-object v5, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {p1, v3, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "s":I
    :cond_2
    return-void
.end method
