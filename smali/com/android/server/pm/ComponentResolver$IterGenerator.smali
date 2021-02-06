.class Lcom/android/server/pm/ComponentResolver$IterGenerator;
.super Ljava/lang/Object;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IterGenerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2184
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$IterGenerator;, "Lcom/android/server/pm/ComponentResolver$IterGenerator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "TE;>;"
        }
    .end annotation

    .line 2186
    .local p0, "this":Lcom/android/server/pm/ComponentResolver$IterGenerator;, "Lcom/android/server/pm/ComponentResolver$IterGenerator<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method
