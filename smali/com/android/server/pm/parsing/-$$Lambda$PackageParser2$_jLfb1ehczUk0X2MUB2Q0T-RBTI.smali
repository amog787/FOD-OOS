.class public final synthetic Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$_jLfb1ehczUk0X2MUB2Q0T-RBTI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/parsing/result/ParseInput$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/parsing/result/ParseInput$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$_jLfb1ehczUk0X2MUB2Q0T-RBTI;->f$0:Landroid/content/pm/parsing/result/ParseInput$Callback;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/parsing/-$$Lambda$PackageParser2$_jLfb1ehczUk0X2MUB2Q0T-RBTI;->f$0:Landroid/content/pm/parsing/result/ParseInput$Callback;

    invoke-static {v0}, Lcom/android/server/pm/parsing/PackageParser2;->lambda$new$2(Landroid/content/pm/parsing/result/ParseInput$Callback;)Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    return-object v0
.end method
