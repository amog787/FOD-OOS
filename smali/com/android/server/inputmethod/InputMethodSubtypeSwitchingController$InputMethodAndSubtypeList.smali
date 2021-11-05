.class Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodAndSubtypeList"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field private final mSystemLocaleStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 181
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public getSortedInputMethodAndSubtypeList(ZZ)Ljava/util/List;
    .locals 22
    .param p1, "includeAuxiliarySubtypes"    # Z
    .param p2, "isScreenLocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    .local v1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 190
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 194
    const/4 v2, 0x0

    .end local p1    # "includeAuxiliarySubtypes":Z
    .local v2, "includeAuxiliarySubtypes":Z
    goto :goto_0

    .line 196
    .end local v2    # "includeAuxiliarySubtypes":Z
    .restart local p1    # "includeAuxiliarySubtypes":Z
    :cond_1
    move/from16 v2, p1

    .end local p1    # "includeAuxiliarySubtypes":Z
    .restart local v2    # "includeAuxiliarySubtypes":Z
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v3, "imList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 198
    .local v4, "numImes":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_9

    .line 199
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 200
    .local v6, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    .line 201
    const/4 v9, 0x1

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v14

    .line 202
    .local v14, "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v7

    .line 203
    .local v15, "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 204
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2

    .line 206
    :cond_2
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 207
    .local v16, "imeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 208
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    .line 212
    .local v13, "subtypeCount":I
    const/4 v7, 0x0

    move v12, v7

    .local v12, "j":I
    :goto_3
    if-ge v12, v13, :cond_7

    .line 213
    invoke-virtual {v6, v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v11

    .line 214
    .local v11, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, "subtypeHashCode":Ljava/lang/String;
    invoke-virtual {v15, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v2, :cond_4

    .line 217
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v19, v1

    move/from16 p1, v2

    move/from16 v21, v12

    move/from16 v17, v13

    goto :goto_6

    .line 219
    :cond_4
    :goto_4
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    move-object v9, v7

    goto :goto_5

    .line 220
    :cond_5
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 221
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    invoke-virtual {v11, v7, v8, v9}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v9, v7

    :goto_5
    nop

    .line 222
    .local v9, "subtypeLabel":Ljava/lang/CharSequence;
    new-instance v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 223
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v17

    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    move-object/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v1

    move-object v1, v8

    .end local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v19, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object/from16 v8, v16

    move/from16 p1, v2

    move-object v2, v10

    .end local v10    # "subtypeHashCode":Ljava/lang/String;
    .local v2, "subtypeHashCode":Ljava/lang/String;
    .restart local p1    # "includeAuxiliarySubtypes":Z
    move-object v10, v6

    move-object/from16 v20, v11

    .end local v11    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v20, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    move v11, v12

    move/from16 v21, v12

    .end local v12    # "j":I
    .local v21, "j":I
    move-object/from16 v12, v17

    move/from16 v17, v13

    .end local v13    # "subtypeCount":I
    .local v17, "subtypeCount":I
    move-object/from16 v13, v18

    invoke-direct/range {v7 .. v13}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    .line 216
    .end local v9    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v17    # "subtypeCount":I
    .end local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v20    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v21    # "j":I
    .end local p1    # "includeAuxiliarySubtypes":Z
    .restart local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .local v2, "includeAuxiliarySubtypes":Z
    .restart local v10    # "subtypeHashCode":Ljava/lang/String;
    .restart local v11    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v12    # "j":I
    .restart local v13    # "subtypeCount":I
    :cond_6
    move-object/from16 v19, v1

    move/from16 p1, v2

    move-object v2, v10

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v17, v13

    .line 212
    .end local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "includeAuxiliarySubtypes":Z
    .end local v10    # "subtypeHashCode":Ljava/lang/String;
    .end local v11    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v12    # "j":I
    .end local v13    # "subtypeCount":I
    .restart local v17    # "subtypeCount":I
    .restart local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v21    # "j":I
    .restart local p1    # "includeAuxiliarySubtypes":Z
    :goto_6
    add-int/lit8 v12, v21, 0x1

    move/from16 v2, p1

    move/from16 v13, v17

    move-object/from16 v1, v19

    .end local v21    # "j":I
    .restart local v12    # "j":I
    goto :goto_3

    .end local v17    # "subtypeCount":I
    .end local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local p1    # "includeAuxiliarySubtypes":Z
    .restart local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v2    # "includeAuxiliarySubtypes":Z
    .restart local v13    # "subtypeCount":I
    :cond_7
    move-object/from16 v19, v1

    move/from16 p1, v2

    move/from16 v21, v12

    move/from16 v17, v13

    .line 231
    .end local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "includeAuxiliarySubtypes":Z
    .end local v12    # "j":I
    .end local v13    # "subtypeCount":I
    .restart local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local p1    # "includeAuxiliarySubtypes":Z
    goto :goto_7

    .line 232
    .end local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local p1    # "includeAuxiliarySubtypes":Z
    .restart local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v2    # "includeAuxiliarySubtypes":Z
    :cond_8
    move-object/from16 v19, v1

    move/from16 p1, v2

    .end local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "includeAuxiliarySubtypes":Z
    .restart local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local p1    # "includeAuxiliarySubtypes":Z
    new-instance v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->mSystemLocaleStr:Ljava/lang/String;

    move-object v7, v1

    move-object/from16 v8, v16

    move-object v10, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v6    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v14    # "explicitlyOrImplicitlyEnabledSubtypeList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v15    # "enabledSubtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "imeLabel":Ljava/lang/CharSequence;
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p1

    move-object/from16 v1, v19

    goto/16 :goto_1

    .line 236
    .end local v5    # "i":I
    .end local v19    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local p1    # "includeAuxiliarySubtypes":Z
    .restart local v1    # "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v2    # "includeAuxiliarySubtypes":Z
    :cond_9
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 237
    return-object v3
.end method
