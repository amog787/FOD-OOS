.class Lcom/android/server/pm/ComponentResolver$CategoriesIterGenerator;
.super Lcom/android/server/pm/ComponentResolver$IterGenerator;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoriesIterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/ComponentResolver$IterGenerator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2199
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$IterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Landroid/content/pm/parsing/component/ParsedIntentInfo;)Ljava/util/Iterator;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/parsing/component/ParsedIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2202
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
