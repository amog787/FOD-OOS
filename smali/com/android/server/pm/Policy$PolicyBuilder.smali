.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSeinfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    .line 601
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/Policy$PolicyBuilder;

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    return-object v0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 691
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 692
    return v0

    .line 695
    :cond_0
    const-string v1, "\\A[\\.\\w]+\\z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    return v0

    .line 699
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "seinfo"    # Ljava/lang/String;

    .line 664
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    invoke-direct {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 674
    .local v0, "pkgValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    const-string v1, "Conflicting seinfo value found"

    .line 676
    .local v1, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 679
    .end local v1    # "err":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-object p0

    .line 669
    .end local v0    # "pkgValue":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid seinfo value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 665
    .end local v0    # "err":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid package name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 2
    .param p1, "cert"    # Ljava/lang/String;

    .line 614
    if-eqz p1, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 620
    return-object p0

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid signature value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public build()Lcom/android/server/pm/Policy;
    .locals 3

    .line 718
    new-instance v0, Lcom/android/server/pm/Policy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy$1;)V

    .line 720
    .local v0, "p":Lcom/android/server/pm/Policy;
    invoke-static {v0}, Lcom/android/server/pm/Policy;->access$400(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    invoke-static {v0}, Lcom/android/server/pm/Policy;->access$500(Lcom/android/server/pm/Policy;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/server/pm/Policy;->access$600(Lcom/android/server/pm/Policy;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 730
    return-object v0

    .line 725
    :cond_1
    const-string v1, "Only seinfo tag XOR package tags are allowed within a signer stanza."

    .line 727
    .local v1, "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 721
    .end local v1    # "err":Ljava/lang/String;
    :cond_2
    const-string v1, "Missing certs with signer tag. Expecting at least one."

    .line 722
    .restart local v1    # "err":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .locals 2
    .param p1, "seinfo"    # Ljava/lang/String;

    .line 635
    invoke-direct {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    const-string v0, "Duplicate seinfo tag found"

    .line 642
    .local v0, "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    .end local v0    # "err":Ljava/lang/String;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    .line 646
    return-object p0

    .line 636
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid seinfo value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    .restart local v0    # "err":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
