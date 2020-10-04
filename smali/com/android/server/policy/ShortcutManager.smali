.class Lcom/android/server/policy/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTRIBUTE_CLASS:Ljava/lang/String; = "class"

.field private static final ATTRIBUTE_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTRIBUTE_SHIFT:Ljava/lang/String; = "shift"

.field private static final ATTRIBUTE_SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "ShortcutManager"

.field private static final TAG_BOOKMARK:Ljava/lang/String; = "bookmark"

.field private static final TAG_BOOKMARKS:Ljava/lang/String; = "bookmarks"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mShiftShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/ShortcutManager$ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    .line 61
    iput-object p1, p0, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/server/policy/ShortcutManager;->loadShortcuts()V

    .line 63
    return-void
.end method

.method private loadShortcuts()V
    .locals 22

    .line 105
    move-object/from16 v1, p0

    const-string v2, "Got exception parsing bookmarks."

    const-string v3, "ShortcutManager"

    iget-object v0, v1, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 107
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1170004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0

    .line 109
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    const-string v0, "bookmarks"

    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 114
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 115
    goto/16 :goto_5

    .line 118
    :cond_0
    const-string v0, "bookmark"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    goto/16 :goto_5

    .line 122
    :cond_1
    const-string/jumbo v0, "package"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 123
    .local v8, "packageName":Ljava/lang/String;
    const-string v0, "class"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 124
    .local v9, "className":Ljava/lang/String;
    const-string/jumbo v0, "shortcut"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 125
    .local v10, "shortcutName":Ljava/lang/String;
    const-string v0, "category"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 126
    .local v11, "categoryName":Ljava/lang/String;
    const-string/jumbo v0, "shift"

    invoke-interface {v5, v7, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 128
    .local v7, "shiftName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const-string v12, "/"

    if-eqz v0, :cond_2

    .line 129
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to get shortcut for: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v14, v0

    .line 134
    .local v14, "shortcutChar":I
    if-eqz v7, :cond_3

    const-string/jumbo v0, "true"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v13

    :goto_1
    move v15, v0

    .line 138
    .local v15, "isShiftShortcut":Z
    const-string v13, "android.intent.action.MAIN"

    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 139
    const/16 v17, 0x0

    .line 140
    .local v17, "info":Landroid/content/pm/ActivityInfo;
    :try_start_2
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v0

    .line 142
    .local v18, "componentName":Landroid/content/ComponentName;
    const v6, 0xc2000

    move-object/from16 v20, v5

    move-object/from16 v5, v18

    .end local v18    # "componentName":Landroid/content/ComponentName;
    .local v5, "componentName":Landroid/content/ComponentName;
    .local v20, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_3
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    goto :goto_2

    .line 146
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v21, v18

    .line 147
    .local v21, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v6, 0x1

    :try_start_4
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v8, v0, v6

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 149
    .local v6, "packages":[Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v19, v5

    const/16 v16, 0x0

    .end local v5    # "componentName":Landroid/content/ComponentName;
    .local v19, "componentName":Landroid/content/ComponentName;
    aget-object v5, v6, v16

    invoke-direct {v0, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v0

    .line 151
    .end local v19    # "componentName":Landroid/content/ComponentName;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    move-object/from16 v16, v6

    const v6, 0xc2000

    .end local v6    # "packages":[Ljava/lang/String;
    .local v16, "packages":[Ljava/lang/String;
    :try_start_5
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 159
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "info":Landroid/content/pm/ActivityInfo;
    nop

    .line 162
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    :try_start_6
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    .local v6, "intent":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 165
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    .line 166
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .local v0, "title":Ljava/lang/String;
    goto :goto_3

    .line 155
    .end local v0    # "title":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    .restart local v5    # "componentName":Landroid/content/ComponentName;
    .restart local v16    # "packages":[Ljava/lang/String;
    .restart local v17    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 156
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to add bookmark: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v21

    .end local v21    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v3, v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 138
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v17    # "info":Landroid/content/pm/ActivityInfo;
    .end local v20    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :cond_4
    move-object/from16 v20, v5

    .line 166
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v20    # "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v11, :cond_6

    .line 167
    invoke-static {v13, v11}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    move-object v6, v0

    .line 168
    .restart local v6    # "intent":Landroid/content/Intent;
    const-string v0, ""

    .line 175
    .local v0, "title":Ljava/lang/String;
    :goto_3
    new-instance v5, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    invoke-direct {v5, v0, v6}, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    .line 176
    .local v5, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    if-eqz v15, :cond_5

    .line 177
    iget-object v12, v1, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 179
    :cond_5
    iget-object v12, v1, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    invoke-virtual {v12, v14, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    .end local v0    # "title":Ljava/lang/String;
    .end local v5    # "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "shiftName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "shortcutName":Ljava/lang/String;
    .end local v11    # "categoryName":Ljava/lang/String;
    .end local v14    # "shortcutChar":I
    .end local v15    # "isShiftShortcut":Z
    :goto_4
    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 170
    .restart local v7    # "shiftName":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "className":Ljava/lang/String;
    .restart local v10    # "shortcutName":Ljava/lang/String;
    .restart local v11    # "categoryName":Ljava/lang/String;
    .restart local v14    # "shortcutChar":I
    .restart local v15    # "isShiftShortcut":Z
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add bookmark for shortcut "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": missing package/class or category attributes"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 172
    move-object/from16 v5, v20

    goto/16 :goto_0

    .line 184
    .end local v7    # "shiftName":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "shortcutName":Ljava/lang/String;
    .end local v11    # "categoryName":Ljava/lang/String;
    .end local v14    # "shortcutChar":I
    .end local v15    # "isShiftShortcut":Z
    .end local v20    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 183
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    nop

    .line 187
    :goto_6
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;
    .locals 5
    .param p1, "kcm"    # Landroid/view/KeyCharacterMap;
    .param p2, "keyCode"    # I
    .param p3, "metaState"    # I

    .line 81
    const/4 v0, 0x0

    .line 84
    .local v0, "shortcut":Lcom/android/server/policy/ShortcutManager$ShortcutInfo;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 85
    .local v1, "isShiftOn":Z
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShiftShortcuts:Landroid/util/SparseArray;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/ShortcutManager;->mShortcuts:Landroid/util/SparseArray;

    .line 88
    .local v2, "shortcutMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/policy/ShortcutManager$ShortcutInfo;>;"
    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v3

    .line 89
    .local v3, "shortcutChar":I
    if-eqz v3, :cond_2

    .line 90
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 94
    :cond_2
    if-nez v0, :cond_3

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/KeyCharacterMap;->getDisplayLabel(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    .line 96
    if-eqz v3, :cond_3

    .line 97
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;

    .line 101
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, v0, Lcom/android/server/policy/ShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method
