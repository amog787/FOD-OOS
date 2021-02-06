.class final Lcom/android/server/textservices/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 72
    if-eqz p0, :cond_3

    .line 73
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "language":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 75
    .local v1, "hasLanguage":Z
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "country":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 77
    .local v3, "hasCountry":Z
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "variant":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 79
    .local v5, "hasVariant":Z
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    .line 80
    new-instance v6, Ljava/util/Locale;

    invoke-direct {v6, v0, v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v6, "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    goto :goto_0

    .line 82
    .end local v6    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :cond_0
    const/4 v6, 0x0

    .line 84
    .restart local v6    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 85
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v7, "systemLocaleLanguageCountry":Ljava/util/Locale;
    goto :goto_1

    .line 87
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_1
    const/4 v7, 0x0

    .line 89
    .restart local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :goto_1
    if-eqz v1, :cond_2

    .line 90
    new-instance v8, Ljava/util/Locale;

    invoke-direct {v8, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .local v8, "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_2

    .line 92
    .end local v8    # "systemLocaleLanguage":Ljava/util/Locale;
    :cond_2
    const/4 v8, 0x0

    .line 94
    .end local v0    # "language":Ljava/lang/String;
    .end local v1    # "hasLanguage":Z
    .end local v2    # "country":Ljava/lang/String;
    .end local v3    # "hasCountry":Z
    .end local v4    # "variant":Ljava/lang/String;
    .end local v5    # "hasVariant":Z
    .restart local v8    # "systemLocaleLanguage":Ljava/util/Locale;
    :goto_2
    goto :goto_3

    .line 95
    .end local v6    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    .end local v8    # "systemLocaleLanguage":Ljava/util/Locale;
    :cond_3
    const/4 v6, 0x0

    .line 96
    .restart local v6    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    const/4 v7, 0x0

    .line 97
    .restart local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    const/4 v8, 0x0

    .line 100
    .restart local v8    # "systemLocaleLanguage":Ljava/util/Locale;
    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    if-eqz v6, :cond_4

    .line 102
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 106
    if-eqz v7, :cond_8

    .line 113
    if-eqz v7, :cond_5

    .line 114
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 117
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_6
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 120
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_7
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 129
    :cond_8
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 140
    :cond_9
    if-eqz v7, :cond_a

    .line 141
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_a
    if-eqz v8, :cond_b

    .line 144
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_4
    return-object v0
.end method
