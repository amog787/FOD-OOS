.class final Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodListBuilder"
.end annotation


# instance fields
.field private final mInputMethodSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/inputmethod/InputMethodUtils$1;

    .line 209
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 232
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 233
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    return-object p0

    .line 236
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    .line 238
    .local v0, "added":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 239
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 240
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x1

    invoke-static {v2, p2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 243
    const/4 v0, 0x1

    .line 238
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 246
    .end local v1    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 247
    return-object p0

    .line 249
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 250
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 251
    .restart local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, 0x0

    invoke-static {v2, p2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 253
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    .end local v1    # "i":I
    :cond_6
    return-object p0
.end method

.method fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 8
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "checkDefaultAttribute"    # Z
    .param p4, "locale"    # Ljava/util/Locale;
    .param p5, "checkCountry"    # Z
    .param p6, "requiredSubtypeMode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Locale;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 218
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 219
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 220
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object v2, v1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodUtils;->access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->mInputMethodSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    return v0
.end method
