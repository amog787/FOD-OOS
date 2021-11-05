.class Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "checkedItem"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .line 5045
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 5047
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 5048
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 5049
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 5050
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5051
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 5055
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    .line 5056
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    nop

    .line 5057
    .local v0, "view":Landroid/view/View;
    if-ltz p1, :cond_4

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_2

    .line 5058
    :cond_1
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 5059
    .local v1, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 5060
    .local v2, "imeName":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 5061
    .local v3, "subtypeName":Ljava/lang/CharSequence;
    const v4, 0x1020014

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 5062
    .local v4, "firstTextView":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 5063
    .local v5, "secondTextView":Landroid/widget/TextView;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 5064
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5065
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 5067
    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5068
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5069
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5071
    :goto_1
    const v6, 0x1020415

    .line 5072
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 5073
    .local v6, "radioButton":Landroid/widget/RadioButton;
    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v8, :cond_3

    const/4 v7, 0x1

    :cond_3
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5074
    return-object v0

    .line 5057
    .end local v1    # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "imeName":Ljava/lang/CharSequence;
    .end local v3    # "subtypeName":Ljava/lang/CharSequence;
    .end local v4    # "firstTextView":Landroid/widget/TextView;
    .end local v5    # "secondTextView":Landroid/widget/TextView;
    .end local v6    # "radioButton":Landroid/widget/RadioButton;
    :cond_4
    :goto_2
    return-object v0
.end method
