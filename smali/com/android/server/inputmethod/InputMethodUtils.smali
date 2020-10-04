.class final Lcom/android/server/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;,
        Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field private static final SUBTYPE_MODE_ANY:Ljava/lang/String;

.field static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field private static final sCacheLock:Ljava/lang/Object;

.field private static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation
.end field

.field private static sCachedResult:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedSystemLocales:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation
.end field

.field private static final sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    .line 75
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    .line 422
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$1;

    invoke-direct {v0}, Lcom/android/server/inputmethod/InputMethodUtils$1;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/util/Locale;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 68
    invoke-static/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    return-object v0
.end method

.method static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 617
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 618
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 733
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    const/4 v0, 0x1

    return v0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    return v1
.end method

.method static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "checkCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    .line 344
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 345
    return v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 348
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_6

    .line 349
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 350
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_2

    .line 351
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v4

    .line 352
    .local v4, "subtypeLocale":Ljava/util/Locale;
    if-eqz v4, :cond_4

    .line 353
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 354
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 355
    goto :goto_2

    .line 357
    .end local v4    # "subtypeLocale":Ljava/util/Locale;
    :cond_1
    goto :goto_1

    .line 358
    :cond_2
    new-instance v4, Ljava/util/Locale;

    .line 359
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v4    # "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 361
    goto :goto_2

    .line 364
    .end local v4    # "subtypeLocale":Ljava/util/Locale;
    :cond_3
    :goto_1
    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    if-eq p3, v4, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 365
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    .line 348
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .restart local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 369
    .end local v2    # "i":I
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    return v0
.end method

.method static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    .line 568
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 571
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    .line 574
    :cond_1
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "language":Ljava/lang/String;
    const/4 v1, 0x0

    .line 576
    .local v1, "partialMatchFound":Z
    const/4 v2, 0x0

    .line 577
    .local v2, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .line 578
    .local v3, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 579
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_6

    .line 580
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 581
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "subtypeLocale":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 586
    :cond_2
    if-nez v3, :cond_3

    .line 587
    move-object v3, v6

    .line 589
    :cond_3
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 591
    move-object v2, v6

    .line 592
    goto :goto_1

    .line 593
    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 595
    move-object v2, v6

    .line 596
    const/4 v1, 0x1

    .line 579
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLocale":Ljava/lang/String;
    .end local v8    # "subtypeLanguage":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 601
    .end local v5    # "i":I
    :cond_6
    :goto_1
    if-nez v2, :cond_7

    if-eqz p4, :cond_7

    .line 602
    return-object v3

    .line 613
    :cond_7
    return-object v2

    .line 569
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "partialMatchFound":Z
    .end local v2    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "N":I
    :cond_8
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method static getApiCallStack()Ljava/lang/String;
    .locals 6

    .line 113
    const-string v0, ""

    .line 115
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .end local v0    # "apiCallStack":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .restart local v0    # "apiCallStack":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 118
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 119
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    move-object v0, v4

    goto :goto_1

    .line 123
    :cond_0
    const-string v5, "Transact("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 125
    move-object v0, v4

    .line 118
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "frames":[Ljava/lang/StackTraceElement;
    .end local v3    # "j":I
    :cond_1
    return-object v0
.end method

.method static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 339
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "onlyMinimum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 320
    .local p1, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 326
    .local v0, "fallbackLocale":Ljava/util/Locale;
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v8

    .line 327
    .local v8, "systemLocale":Ljava/util/Locale;
    nop

    .line 328
    invoke-static {p1, p0, v8, v0}, Lcom/android/server/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v9

    .line 329
    .local v9, "builder":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    if-nez p2, :cond_0

    .line 330
    const/4 v4, 0x1

    const/4 v6, 0x1

    sget-object v7, Lcom/android/server/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p0

    move-object v5, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    move-result-object v1

    .line 332
    invoke-virtual {v1, p1, p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 334
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 156
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v10, v0, v3

    .line 157
    .local v10, "fallbackLocale":Ljava/util/Locale;
    const/4 v4, 0x0

    move v11, v4

    .local v11, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_1

    .line 158
    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v6, 0x1

    const/4 v8, 0x1

    const-string/jumbo v9, "keyboard"

    move-object v5, p1

    move-object v7, v10

    invoke-static/range {v4 .. v9}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    return-object v10

    .line 157
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 156
    .end local v10    # "fallbackLocale":Ljava/util/Locale;
    .end local v11    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_2
    sget-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v9, v0, v2

    .line 168
    .local v9, "fallbackLocale":Ljava/util/Locale;
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_4

    .line 169
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v4, p1

    move-object v6, v9

    invoke-static/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    return-object v9

    .line 168
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 167
    .end local v9    # "fallbackLocale":Ljava/util/Locale;
    .end local v10    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 176
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found no fallback locale. imis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 712
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 713
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_1

    .line 714
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 715
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 714
    invoke-virtual {p2, p0, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 716
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 717
    const-string v3, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    .line 714
    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 718
    :cond_1
    move-object v1, v0

    .line 713
    :goto_1
    return-object v1
.end method

.method static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 435
    .local v0, "systemLocales":Landroid/os/LocaleList;
    sget-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    if-ne v2, p1, :cond_0

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 441
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 446
    nop

    .line 447
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 448
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v3, Lcom/android/server/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 450
    :try_start_1
    sput-object v0, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    .line 451
    sput-object p1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    .line 453
    monitor-exit v3

    .line 454
    return-object v2

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 441
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 459
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 460
    .local v0, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 461
    .local v1, "systemLocales":Landroid/os/LocaleList;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "systemLocale":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    return-object v3

    .line 463
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 466
    .local v3, "numSubtypes":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 467
    .local v4, "applicableModeAndSubtypesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 469
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 470
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 471
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, "mode":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 473
    invoke-virtual {v4, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "mode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 477
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 478
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5

    .line 481
    :cond_3
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 483
    .local v5, "nonKeyboardSubtypesMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v6, "keyboardSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const-string/jumbo v8, "keyboard"

    if-ge v7, v3, :cond_6

    .line 486
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 487
    .local v9, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v10

    .line 488
    .local v10, "mode":Ljava/lang/String;
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 489
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 491
    :cond_4
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 492
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v10, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    :cond_5
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v9    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "mode":Ljava/lang/String;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 498
    .end local v7    # "i":I
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v7, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v9, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v6, v9, v1, v7}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 502
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 503
    const/4 v9, 0x0

    .line 504
    .local v9, "hasAsciiCapableKeyboard":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 505
    .local v10, "numApplicationSubtypes":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_8

    .line 506
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodSubtype;

    .line 507
    .local v12, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodSubtype;->isAsciiCapable()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 508
    const/4 v9, 0x1

    .line 509
    goto :goto_4

    .line 505
    .end local v12    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 512
    .end local v11    # "i":I
    :cond_8
    :goto_4
    if-nez v9, :cond_a

    .line 513
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 514
    .local v11, "numKeyboardSubtypes":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5
    if-ge v12, v11, :cond_a

    .line 515
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodSubtype;

    .line 516
    .local v13, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v14

    .line 517
    .local v14, "mode":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    const-string v15, "EnabledWhenDefaultIsNotAsciiCapable"

    invoke-virtual {v13, v15}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 519
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v13    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v14    # "mode":Ljava/lang/String;
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 525
    .end local v9    # "hasAsciiCapableKeyboard":Z
    .end local v10    # "numApplicationSubtypes":I
    .end local v11    # "numKeyboardSubtypes":I
    .end local v12    # "i":I
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 526
    const/4 v9, 0x1

    move-object/from16 v10, p0

    invoke-static {v10, v0, v8, v2, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 528
    .local v8, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v8, :cond_c

    .line 529
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 525
    .end local v8    # "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_b
    move-object/from16 v10, p0

    .line 534
    :cond_c
    :goto_6
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 535
    .local v9, "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v11, Lcom/android/server/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;

    invoke-static {v9, v11, v1, v7}, Lcom/android/server/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    .line 537
    .end local v9    # "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    goto :goto_7

    .line 539
    :cond_d
    return-object v7
.end method

.method private static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "locale"    # Ljava/lang/String;

    .line 547
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 548
    .local v0, "idx":I
    if-gez v0, :cond_0

    .line 549
    return-object p0

    .line 551
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemLocale"    # Ljava/util/Locale;
    .param p3, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    .line 282
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v0, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$1;)V

    .line 283
    .local v0, "builder":Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 285
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    return-object v0

    .line 288
    :cond_0
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 290
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    return-object v0

    .line 293
    :cond_1
    const/4 v5, 0x1

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 295
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    return-object v0

    .line 298
    :cond_2
    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 300
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    return-object v0

    .line 303
    :cond_3
    const/4 v5, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 305
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 306
    return-object v0

    .line 308
    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "keyboard"

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;

    .line 310
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 311
    return-object v0

    .line 313
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No software keyboard is found. imis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " systemLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fallbackLocale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v0
.end method

.method static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    .line 382
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 386
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 387
    .local v0, "i":I
    const/4 v1, -0x1

    .line 388
    .local v1, "firstFoundSystemIme":I
    :goto_0
    const/4 v2, 0x0

    if-lez v0, :cond_4

    .line 389
    add-int/lit8 v0, v0, -0x1

    .line 390
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 391
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 392
    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    const-string/jumbo v5, "keyboard"

    invoke-static {v3, v4, v2, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    return-object v3

    .line 398
    :cond_2
    if-gez v1, :cond_3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 399
    move v1, v0

    .line 401
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    goto :goto_0

    .line 402
    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    return-object v2

    .line 383
    .end local v0    # "i":I
    .end local v1    # "firstFoundSystemIme":I
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .line 410
    if-eqz p0, :cond_1

    .line 411
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 412
    .local v0, "subtypeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 413
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 414
    .local v2, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 415
    return v1

    .line 412
    .end local v2    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v0    # "subtypeCount":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 375
    .local v1, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 376
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static isSoftInputModeStateVisibleAllowed(II)Z
    .locals 3
    .param p0, "targetSdkVersion"    # I
    .param p1, "startInputFlags"    # I

    .line 1289
    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-ge p0, v1, :cond_0

    .line 1291
    return v0

    .line 1293
    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1294
    return v2

    .line 1296
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    .line 1297
    return v2

    .line 1299
    :cond_2
    return v0
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    .line 182
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    return v1

    .line 185
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    return v1

    .line 188
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    return v1

    .line 191
    :cond_2
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    .line 192
    .local v0, "subtypeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 193
    invoke-virtual {p0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 194
    .local v3, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    const/4 v1, 0x1

    return v1

    .line 192
    .end local v3    # "s":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v2    # "i":I
    :cond_4
    return v1
.end method

.method private static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z
    .param p3, "requiredLocale"    # Ljava/util/Locale;
    .param p4, "checkCountry"    # Z
    .param p5, "requiredSubtypeMode"    # Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 141
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    return v1

    .line 144
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/server/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    return v1

    .line 147
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    .line 406
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static resolveUserId(IILjava/io/PrintWriter;)[I
    .locals 8
    .param p0, "userIdToBeResolved"    # I
    .param p1, "currentUserId"    # I
    .param p2, "warningWriter"    # Ljava/io/PrintWriter;

    .line 1319
    const-class v0, Landroid/os/UserManagerInternal;

    .line 1320
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 1322
    .local v0, "userManagerInternal":Landroid/os/UserManagerInternal;
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_3

    .line 1323
    sget-boolean v2, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1324
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    return-object v1

    .line 1326
    :cond_0
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 1327
    .local v2, "result":Landroid/util/IntArray;
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget v5, v3, v1

    .line 1328
    .local v5, "userId":I
    invoke-virtual {v0, v5}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v6

    .line 1329
    .local v6, "parentUserId":I
    invoke-virtual {v2, v6}, Landroid/util/IntArray;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_1

    .line 1330
    invoke-virtual {v2, v6}, Landroid/util/IntArray;->add(I)V

    .line 1327
    .end local v5    # "userId":I
    .end local v6    # "parentUserId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1333
    :cond_2
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1

    .line 1337
    .end local v2    # "result":Landroid/util/IntArray;
    :cond_3
    const/4 v2, -0x2

    if-ne p0, v2, :cond_4

    .line 1338
    move v2, p1

    .local v2, "sourceUserId":I
    goto :goto_1

    .line 1339
    .end local v2    # "sourceUserId":I
    :cond_4
    if-gez p0, :cond_6

    .line 1340
    if-eqz p2, :cond_5

    .line 1341
    const-string v2, "Pseudo user ID "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1343
    const-string v2, " is not supported."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    :cond_5
    new-array v1, v1, [I

    return-object v1

    .line 1346
    :cond_6
    invoke-virtual {v0, p0}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1347
    move v2, p0

    .line 1356
    .restart local v2    # "sourceUserId":I
    :goto_1
    sget-boolean v3, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-eqz v3, :cond_7

    .line 1357
    move v3, v2

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v2}, Landroid/os/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 1358
    .local v3, "resolvedUserId":I
    :goto_2
    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v3, v4, v1

    return-object v4

    .line 1349
    .end local v2    # "sourceUserId":I
    .end local v3    # "resolvedUserId":I
    :cond_8
    if-eqz p2, :cond_9

    .line 1350
    const-string v2, "User #"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    const-string v2, " does not exit."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    :cond_9
    new-array v1, v1, [I

    return-object v1
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 683
    const-string v0, " userId="

    const-string v1, "InputMethodUtils"

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    .local v2, "state":I
    nop

    .line 689
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 695
    :cond_0
    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move-object v9, p3

    :try_start_1
    invoke-interface/range {v4 .. v9}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 702
    nop

    .line 708
    :cond_1
    return-void

    .line 698
    :catch_0
    move-exception v3

    .line 699
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setApplicationEnabledSetting failed. packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " callingPackage="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    return-void

    .line 684
    .end local v2    # "state":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 685
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationEnabledSetting failed. packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 687
    return-void
.end method

.method static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .locals 11
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 626
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 633
    :cond_0
    invoke-static {}, Lcom/android/server/textservices/TextServicesManagerInternal;->get()Lcom/android/server/textservices/TextServicesManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/textservices/TextServicesManagerInternal;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 634
    .local v1, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v0, v4

    .line 638
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 639
    .local v6, "enabledIme":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 640
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 641
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 642
    const/4 v6, 0x1

    .line 643
    goto :goto_2

    .line 639
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 646
    .end local v7    # "j":I
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 648
    goto :goto_4

    .line 650
    :cond_3
    if-eqz v1, :cond_4

    .line 651
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 656
    goto :goto_4

    .line 658
    :cond_4
    const/4 v7, 0x0

    .line 660
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    const v8, 0x8000

    :try_start_0
    invoke-interface {p0, v5, v8, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    .line 666
    nop

    .line 667
    if-nez v7, :cond_5

    .line 669
    goto :goto_4

    .line 671
    :cond_5
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    move v9, v3

    :goto_3
    move v8, v9

    .line 672
    .local v8, "isSystemPackage":Z
    if-nez v8, :cond_7

    .line 673
    goto :goto_4

    .line 675
    :cond_7
    invoke-static {p0, v5, p2, p3}, Lcom/android/server/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 662
    .end local v8    # "isSystemPackage":Z
    :catch_0
    move-exception v8

    .line 663
    .local v8, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getApplicationInfo failed. packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "InputMethodUtils"

    invoke-static {v10, v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    nop

    .line 634
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "enabledIme":Z
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 677
    :cond_8
    return-void

    .line 629
    .end local v1    # "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    :cond_9
    :goto_5
    return-void
.end method
