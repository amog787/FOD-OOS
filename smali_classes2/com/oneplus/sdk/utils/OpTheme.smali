.class public Lcom/oneplus/sdk/utils/OpTheme;
.super Ljava/lang/Object;
.source "OpTheme.java"


# static fields
.field private static final DBG:Z = true

.field public static final RESULT_FAIL:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpTheme"

.field public static THEME_CATEGORY_ACCENTCOLOR:Ljava/lang/String;

.field public static THEME_CATEGORY_BASICCOLOR:Ljava/lang/String;

.field public static THEME_CATEGORY_DIALOG:Ljava/lang/String;

.field public static THEME_CATEGORY_DYNAMICFONT:Ljava/lang/String;

.field public static THEME_CATEGORY_FODANIMATION:Ljava/lang/String;

.field public static THEME_CATEGORY_FODICON:Ljava/lang/String;

.field public static THEME_CATEGORY_ICON:Ljava/lang/String;

.field public static THEME_CATEGORY_PANEL:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "oneplus_basiccolor"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_BASICCOLOR:Ljava/lang/String;

    .line 25
    const-string v0, "oneplus_accentcolor"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_ACCENTCOLOR:Ljava/lang/String;

    .line 26
    const-string v0, "oneplus_dynamicfont"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_DYNAMICFONT:Ljava/lang/String;

    .line 27
    const-string v0, "oneplus_panel"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_PANEL:Ljava/lang/String;

    .line 28
    const-string v0, "oneplus_icon"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_ICON:Ljava/lang/String;

    .line 29
    const-string v0, "oneplus_fodanimation"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_FODANIMATION:Ljava/lang/String;

    .line 30
    const-string v0, "oneplus_fodicon"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_FODICON:Ljava/lang/String;

    .line 31
    const-string v0, "oneplus_dialog"

    sput-object v0, Lcom/oneplus/sdk/utils/OpTheme;->THEME_CATEGORY_DIALOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/sdk/utils/OpTheme;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/oneplus/sdk/utils/OpTheme;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public disableTheme(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 75
    .local p1, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 77
    .local v0, "result":I
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.oneplus_theme_disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "category_map"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v2, p0, Lcom/oneplus/sdk/utils/OpTheme;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpTheme"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, -0x1

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public enableTheme(Ljava/util/HashMap;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 54
    .local p1, "categoryMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "result":I
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.oneplus_theme_enable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "category_map"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/oneplus/sdk/utils/OpTheme;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpTheme"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, -0x1

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
