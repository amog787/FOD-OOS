.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;,
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveUi"

.field private static final THEME_ID_DARK:I = 0x10303de

.field private static final THEME_ID_LIGHT:I = 0x10303e6


# instance fields
.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mThemeId:I

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;ZZZ)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pendingUi"    # Lcom/android/server/autofill/ui/PendingUi;
    .param p3, "serviceLabel"    # Ljava/lang/CharSequence;
    .param p4, "serviceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "servicePackageName"    # Ljava/lang/String;
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "info"    # Landroid/service/autofill/SaveInfo;
    .param p8, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p9, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p10, "listener"    # Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;
    .param p11, "nightMode"    # Z
    .param p12, "isUpdate"    # Z
    .param p13, "compatMode"    # Z

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    .line 135
    new-instance v3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 159
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v4, "SaveUi"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nightMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    if-eqz v2, :cond_1

    const v3, 0x10303de

    goto :goto_0

    :cond_1
    const v3, 0x10303e6

    :goto_0
    iput v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    .line 161
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 162
    new-instance v5, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v6, p10

    invoke-direct {v5, v0, v6}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    .line 163
    move-object/from16 v5, p9

    iput-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    .line 164
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    .line 165
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    .line 166
    move/from16 v9, p13

    iput-boolean v9, v0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    .line 168
    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget v11, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    move-object/from16 v12, p1

    invoke-direct {v10, v12, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 169
    .end local p1    # "context":Landroid/content/Context;
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 170
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x109003f

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 172
    .local v12, "view":Landroid/view/View;
    const v14, 0x10201d0

    invoke-virtual {v12, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 174
    .local v14, "titleView":Landroid/widget/TextView;
    new-instance v15, Landroid/util/ArraySet;

    const/4 v13, 0x3

    invoke-direct {v15, v13}, Landroid/util/ArraySet;-><init>(I)V

    .line 175
    .local v15, "types":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v13

    .line 177
    .local v13, "type":I
    and-int/lit8 v17, v13, 0x1

    if-eqz v17, :cond_2

    .line 178
    const v2, 0x10400dc

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_2
    and-int/lit8 v2, v13, 0x2

    if-eqz v2, :cond_3

    .line 181
    const v2, 0x10400d9

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_3
    and-int/lit8 v2, v13, 0x4

    if-eqz v2, :cond_4

    .line 184
    const v2, 0x10400da

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_4
    and-int/lit8 v2, v13, 0x8

    if-eqz v2, :cond_5

    .line 187
    const v2, 0x10400dd

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_5
    and-int/lit8 v2, v13, 0x10

    if-eqz v2, :cond_6

    .line 190
    const v2, 0x10400db

    invoke-virtual {v10, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_6
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v5, 0x2

    if-eq v2, v5, :cond_a

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    .line 214
    nop

    .line 215
    if-eqz p12, :cond_7

    const v2, 0x10400e3

    goto :goto_1

    .line 216
    :cond_7
    const v2, 0x10400d5

    :goto_1
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v5, v3

    .line 215
    invoke-virtual {v10, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 207
    :cond_8
    nop

    .line 208
    if-eqz p12, :cond_9

    const v2, 0x10400e5

    goto :goto_2

    .line 209
    :cond_9
    const v2, 0x10400d7

    :goto_2
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 210
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v3, v5

    const/4 v5, 0x2

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v3, v5

    const/4 v5, 0x3

    aput-object p3, v3, v5

    .line 207
    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 211
    goto :goto_5

    .line 201
    :cond_a
    nop

    .line 202
    if-eqz p12, :cond_b

    const v2, 0x10400e4

    goto :goto_3

    .line 203
    :cond_b
    const v2, 0x10400d6

    :goto_3
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 204
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v5

    const/4 v5, 0x2

    aput-object p3, v3, v5

    .line 201
    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 205
    goto :goto_5

    .line 195
    :cond_c
    nop

    .line 196
    if-eqz p12, :cond_d

    const v2, 0x10400e6

    goto :goto_4

    .line 197
    :cond_d
    const v2, 0x10400d8

    :goto_4
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 198
    const/4 v5, 0x0

    invoke-virtual {v15, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v3, v5

    const/16 v16, 0x1

    aput-object p3, v3, v16

    .line 195
    invoke-virtual {v10, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    .line 199
    nop

    .line 219
    :goto_5
    iget-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    move-object/from16 v2, p4

    invoke-direct {v0, v10, v12, v2}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 223
    nop

    .line 224
    move-object/from16 v3, p8

    invoke-direct {v0, v10, v12, v3, v1}, Lcom/android/server/autofill/ui/SaveUi;->applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z

    move-result v5

    .line 225
    .local v5, "hasCustomDescription":Z
    if-eqz v5, :cond_f

    .line 226
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 227
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "on constructor: applied custom description"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move/from16 p1, v5

    goto :goto_7

    .line 229
    :cond_f
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    .line 230
    iget-object v2, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_10

    .line 231
    const/16 v2, 0x46b

    invoke-direct {v0, v2, v13}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 232
    const v2, 0x10201cd

    .line 233
    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 234
    .local v2, "subtitleContainer":Landroid/view/ViewGroup;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 235
    .local v3, "subtitleView":Landroid/widget/TextView;
    move/from16 p1, v5

    .end local v5    # "hasCustomDescription":Z
    .local p1, "hasCustomDescription":Z
    iget-object v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 230
    .end local v2    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v3    # "subtitleView":Landroid/widget/TextView;
    .end local p1    # "hasCustomDescription":Z
    .restart local v5    # "hasCustomDescription":Z
    :cond_10
    move/from16 p1, v5

    .line 241
    .end local v5    # "hasCustomDescription":Z
    .restart local p1    # "hasCustomDescription":Z
    :goto_6
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on constructor: title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_11
    :goto_7
    const v2, 0x10201cf

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 245
    .local v2, "noButton":Landroid/widget/TextView;
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 246
    const v3, 0x1040652

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 248
    :cond_12
    const v3, 0x10400d4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 250
    :goto_8
    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;

    invoke-direct {v3, v0, v1}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$E9O26NP1L_DDYBfaO7fQ0hhPAx8;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v3, 0x10201d1

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 253
    .local v3, "yesButton":Landroid/widget/TextView;
    if-eqz p12, :cond_13

    .line 254
    const v4, 0x10400e7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 256
    :cond_13
    new-instance v4, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;

    invoke-direct {v4, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$b3z89RdKv6skukyM-l67uIcvlf0;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    new-instance v4, Landroid/app/Dialog;

    iget v5, v0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-direct {v4, v10, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    .line 259
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4, v12}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 263
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    new-instance v5, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;

    invoke-direct {v5, v0}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$ckPlzqJfB_ohleAkb5RXKU7mFY8;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 265
    iget-object v4, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 266
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7f6

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 267
    const v5, 0x60020

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 270
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 271
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 272
    const/16 v5, 0x51

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 273
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 274
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 275
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, -0x1

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 276
    const v6, 0x10400d3

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 277
    const v6, 0x1030312

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 280
    return-void
.end method

.method private applyCustomDescription(Landroid/content/Context;Landroid/view/View;Landroid/service/autofill/ValueFinder;Landroid/service/autofill/SaveInfo;)Z
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "saveUiView"    # Landroid/view/View;
    .param p3, "valueFinder"    # Landroid/service/autofill/ValueFinder;
    .param p4, "info"    # Landroid/service/autofill/SaveInfo;

    .line 284
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v4

    .line 285
    .local v4, "customDescription":Landroid/service/autofill/CustomDescription;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 286
    return v5

    .line 288
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v6

    .line 289
    .local v6, "type":I
    const/16 v0, 0x469

    invoke-direct {v1, v0, v6}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    .line 291
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 292
    .local v7, "template":Landroid/widget/RemoteViews;
    const-string v8, "SaveUi"

    if-nez v7, :cond_1

    .line 293
    const-string v0, "No remote view on custom description"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v5

    .line 298
    :cond_1
    nop

    .line 299
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v9

    .line 300
    .local v9, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyCustomDescription(): transformations = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    if-eqz v9, :cond_3

    .line 304
    invoke-static {v3, v7, v9}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    const-string v0, "could not apply main transformations on custom description"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v5

    .line 310
    :cond_3
    new-instance v10, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;

    .local v10, "handler":Landroid/widget/RemoteViews$OnClickHandler;
    invoke-direct {v10, v1, v6}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$AjvUEgdrIrhxK5p_4hhcwEoBDgU;-><init>(Lcom/android/server/autofill/ui/SaveUi;I)V

    .line 345
    const/4 v0, 0x0

    :try_start_0
    iget v11, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {v7, v2, v0, v10, v11}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;I)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, "customSubtitleView":Landroid/view/View;
    nop

    .line 350
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v11

    .line 351
    .local v11, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v12, :cond_4

    .line 352
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "applyCustomDescription(): view = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " updates="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 426
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :catch_0
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v17, v6

    move-object/from16 v18, v9

    goto/16 :goto_b

    .line 355
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_4
    :goto_0
    const-string v12, "custom description has "

    if-eqz v11, :cond_f

    .line 356
    :try_start_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 357
    .local v13, "size":I
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v14, :cond_5

    :try_start_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " batch updates"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 358
    :cond_5
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_e

    .line 359
    :try_start_4
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 360
    .local v15, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    iget-object v5, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/InternalValidator;

    .line 361
    .local v5, "condition":Landroid/service/autofill/InternalValidator;
    if-eqz v5, :cond_c

    invoke-virtual {v5, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v9

    goto/16 :goto_5

    .line 365
    :cond_6
    iget-object v1, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/BatchUpdates;

    .line 367
    .local v1, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    invoke-virtual {v1}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v16

    move-object/from16 v17, v16

    .line 368
    .local v17, "templateUpdates":Landroid/widget/RemoteViews;
    move-object/from16 v16, v5

    move-object/from16 v5, v17

    .end local v17    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v5, "templateUpdates":Landroid/widget/RemoteViews;
    .local v16, "condition":Landroid/service/autofill/InternalValidator;
    if-eqz v5, :cond_8

    .line 369
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v17, :cond_7

    move/from16 v17, v6

    .end local v6    # "type":I
    .local v17, "type":I
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v18, v9

    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v18, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :try_start_6
    const-string v9, "Applying template updates for batch update #"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 426
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v1    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .end local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v13    # "size":I
    .end local v14    # "i":I
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v16    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :catch_1
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v5, p2

    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    goto/16 :goto_b

    .line 369
    .end local v17    # "type":I
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v1    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v6    # "type":I
    .restart local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .restart local v13    # "size":I
    .restart local v14    # "i":I
    .restart local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .restart local v16    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_7
    move/from16 v17, v6

    move-object/from16 v18, v9

    .line 370
    .end local v6    # "type":I
    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v17    # "type":I
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :goto_2
    invoke-virtual {v5, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_3

    .line 368
    .end local v17    # "type":I
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v6    # "type":I
    .restart local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :cond_8
    move/from16 v17, v6

    move-object/from16 v18, v9

    .line 373
    .end local v6    # "type":I
    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v17    # "type":I
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :goto_3
    nop

    .line 374
    invoke-virtual {v1}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v6

    .line 375
    .local v6, "batchTransformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    if-eqz v6, :cond_b

    .line 376
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v19, v1

    .end local v1    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .local v19, "batchUpdates":Landroid/service/autofill/BatchUpdates;
    const-string v1, ": "

    if-eqz v9, :cond_9

    .line 377
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v5

    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v20, "templateUpdates":Landroid/widget/RemoteViews;
    const-string v5, "Applying child transformation for batch update #"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 376
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_9
    move-object/from16 v20, v5

    .line 380
    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    :goto_4
    invoke-static {v3, v7, v6}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not apply child transformation for batch update #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v1, 0x0

    return v1

    .line 386
    :cond_a
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_6

    .line 375
    .end local v19    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v1    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    :cond_b
    move-object/from16 v19, v1

    move-object/from16 v20, v5

    .end local v1    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v5    # "templateUpdates":Landroid/widget/RemoteViews;
    .restart local v19    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .restart local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    goto :goto_6

    .line 361
    .end local v16    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v17    # "type":I
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .end local v19    # "batchUpdates":Landroid/service/autofill/BatchUpdates;
    .end local v20    # "templateUpdates":Landroid/widget/RemoteViews;
    .local v5, "condition":Landroid/service/autofill/InternalValidator;
    .local v6, "type":I
    .restart local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :cond_c
    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v9

    .line 362
    .end local v5    # "condition":Landroid/service/autofill/InternalValidator;
    .end local v6    # "type":I
    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v16    # "condition":Landroid/service/autofill/InternalValidator;
    .restart local v17    # "type":I
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :goto_5
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping batch update #"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v15    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;"
    .end local v16    # "condition":Landroid/service/autofill/InternalValidator;
    :cond_d
    :goto_6
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v6, v17

    move-object/from16 v9, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    .end local v17    # "type":I
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v6    # "type":I
    .restart local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :cond_e
    move/from16 v17, v6

    move-object/from16 v18, v9

    .end local v6    # "type":I
    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v17    # "type":I
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    goto :goto_7

    .line 426
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v13    # "size":I
    .end local v14    # "i":I
    .end local v17    # "type":I
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v6    # "type":I
    .restart local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :catch_2
    move-exception v0

    move/from16 v17, v6

    move-object/from16 v18, v9

    move-object/from16 v5, p2

    goto/16 :goto_b

    .line 355
    .restart local v0    # "customSubtitleView":Landroid/view/View;
    .restart local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    :cond_f
    move/from16 v17, v6

    move-object/from16 v18, v9

    .line 392
    .end local v6    # "type":I
    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .restart local v17    # "type":I
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :goto_7
    invoke-virtual {v4}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v1

    .line 393
    .local v1, "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    if-eqz v1, :cond_14

    .line 394
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 395
    .local v5, "size":I
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " actions"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_10
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-nez v6, :cond_11

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v1

    goto :goto_a

    .line 400
    :cond_11
    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 401
    .local v6, "rootView":Landroid/view/ViewGroup;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    if-ge v9, v5, :cond_13

    .line 402
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 403
    .local v12, "id":I
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/service/autofill/InternalOnClickAction;

    .line 404
    .local v13, "action":Landroid/service/autofill/InternalOnClickAction;
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 405
    .local v14, "child":Landroid/view/View;
    if-nez v14, :cond_12

    .line 406
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    .end local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .local v16, "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    const-string v1, "Ignoring action "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for view "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " because it\'s not on "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    goto :goto_9

    .line 410
    .end local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    :cond_12
    move-object/from16 v16, v1

    .end local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;

    invoke-direct {v1, v13, v6}, Lcom/android/server/autofill/ui/-$$Lambda$SaveUi$PXbcwumYwHXYcovQfoabkLzf8CM;-><init>(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 401
    .end local v12    # "id":I
    .end local v13    # "action":Landroid/service/autofill/InternalOnClickAction;
    .end local v14    # "child":Landroid/view/View;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v16

    goto :goto_8

    .end local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    :cond_13
    move-object/from16 v16, v1

    .end local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    goto :goto_a

    .line 393
    .end local v5    # "size":I
    .end local v6    # "rootView":Landroid/view/ViewGroup;
    .end local v9    # "i":I
    .end local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    :cond_14
    move-object/from16 v16, v1

    .line 421
    .end local v1    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    .restart local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    :goto_a
    const v1, 0x10201cd

    .line 422
    move-object/from16 v5, p2

    :try_start_8
    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 423
    .local v1, "subtitleContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 424
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 425
    const/4 v6, 0x1

    return v6

    .line 426
    .end local v0    # "customSubtitleView":Landroid/view/View;
    .end local v1    # "subtitleContainer":Landroid/view/ViewGroup;
    .end local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/service/autofill/InternalValidator;Landroid/service/autofill/BatchUpdates;>;>;"
    .end local v16    # "actions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/service/autofill/InternalOnClickAction;>;"
    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v5, p2

    goto :goto_b

    .end local v17    # "type":I
    .end local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v6, "type":I
    .local v9, "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :catch_5
    move-exception v0

    move-object/from16 v5, p2

    move/from16 v17, v6

    move-object/from16 v18, v9

    .line 427
    .end local v6    # "type":I
    .end local v9    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "type":I
    .restart local v18    # "transformations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Landroid/service/autofill/InternalTransformation;>;>;"
    :goto_b
    const-string v1, "Error applying custom description. "

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 457
    const/4 v0, 0x0

    const-string v1, "SaveUi"

    if-nez p0, :cond_0

    .line 458
    const-string/jumbo v2, "isValidLink(): custom description without pending intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    const-string/jumbo v2, "isValidLink(): pending intent not for activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v0

    .line 465
    :cond_1
    if-nez p1, :cond_2

    .line 466
    const-string/jumbo v2, "isValidLink(): no intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0

    .line 469
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$applyCustomDescription$4(Landroid/service/autofill/InternalOnClickAction;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p0, "action"    # Landroid/service/autofill/InternalOnClickAction;
    .param p1, "rootView"    # Landroid/view/ViewGroup;
    .param p2, "v"    # Landroid/view/View;

    .line 411
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " was clicked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Landroid/service/autofill/InternalOnClickAction;->onClick(Landroid/view/ViewGroup;)V

    .line 415
    return-void
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 4
    .param p1, "category"    # I

    .line 477
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v2, v2, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "serviceIcon"    # Landroid/graphics/drawable/Drawable;

    .line 433
    const v0, 0x10201ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 434
    .local v0, "iconView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 436
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1050034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 437
    .local v2, "maxWidth":I
    move v3, v2

    .line 438
    .local v3, "maxHeight":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 439
    .local v4, "actualWidth":I
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 441
    .local v5, "actualHeight":I
    const-string v6, ")."

    const-string v7, "SaveUi"

    const-string/jumbo v8, "x"

    if-gt v4, v2, :cond_1

    if-gt v5, v3, :cond_1

    .line 442
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_0

    .line 443
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding service icon ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") as it\'s less than maximum ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_0
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not adding service icon of size ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") because maximum is ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 454
    :goto_0
    return-void
.end method

.method private show()V
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing save dialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 524
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 525
    return-void
.end method

.method private throwIfDestroyed()V
    .locals 2

    .line 551
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 554
    return-void

    .line 552
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeLog(II)V
    .locals 2
    .param p1, "category"    # I
    .param p2, "saveType"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 483
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 2

    .line 539
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveUi"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    .line 541
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onDestroy()V

    .line 542
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 547
    nop

    .line 548
    return-void

    .line 546
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "title: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "subtitle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 564
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "pendingUi: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 565
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "compat mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 568
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 569
    iget v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    const v1, 0x10303de

    if-eq v0, v1, :cond_1

    const v1, 0x10303e6

    if-eq v0, v1, :cond_0

    .line 577
    const-string v0, "(UNKNOWN_MODE)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 574
    :cond_0
    const-string v0, " (light)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    goto :goto_0

    .line 571
    :cond_1
    const-string v0, " (dark)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    nop

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 582
    .local v1, "loc":[I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const/16 v6, 0x29

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 584
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 585
    aget v2, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 586
    aget v2, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    .line 587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 588
    return-void
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .locals 2

    .line 528
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "SaveUi"

    const-string v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    .line 533
    nop

    .line 534
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    .line 532
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method public synthetic lambda$applyCustomDescription$3$SaveUi(ILandroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 9
    .param p1, "type"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "response"    # Landroid/widget/RemoteViews$RemoteResponse;

    .line 311
    invoke-virtual {p4, p2}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 313
    const/16 v1, 0x46c

    invoke-direct {p0, v1, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 317
    .local v1, "log":Landroid/metrics/LogMaker;
    invoke-static {p3, v0}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v2

    .line 318
    .local v2, "isValid":Z
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 320
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 321
    return v3

    .line 323
    :cond_0
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v5, "SaveUi"

    if-eqz v4, :cond_1

    const-string v4, "Intercepting custom description intent"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 325
    .local v4, "token":Landroid/os/IBinder;
    const-string v6, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 327
    :try_start_0
    iget-object v6, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v6, v6, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 329
    iget-object v6, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 330
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hiding UI until restored with token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    .line 332
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 333
    iget-object v7, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return v6

    .line 335
    :catch_0
    move-exception v6

    .line 336
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error triggering pending intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 338
    iget-object v5, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 339
    return v3
.end method

.method public synthetic lambda$new$0$SaveUi(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .locals 2
    .param p1, "info"    # Landroid/service/autofill/SaveInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$new$1$SaveUi(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 256
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onSave()V

    return-void
.end method

.method public synthetic lambda$new$2$SaveUi(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;

    .line 263
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 493
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v0

    const-string v1, "SaveUi"

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): got token "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " instead of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 495
    invoke-virtual {v2}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 498
    :cond_0
    const/16 v0, 0x46e

    invoke-direct {p0, v0}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 500
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 512
    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore(): invalid operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 502
    :cond_1
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring save dialog for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 504
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    .line 505
    goto :goto_0

    .line 507
    :cond_3
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 508
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancelling pending save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    nop

    .line 516
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 517
    nop

    .line 518
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    .line 519
    return-void

    .line 516
    :goto_1
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "NO TITLE"

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
