.class Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IFVerificationParams"
.end annotation


# instance fields
.field activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field hasDomainUrls:Z

.field packageName:Ljava/lang/String;

.field replacing:Z

.field userId:I

.field verifierUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/util/List;ZII)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hasDomainUrls"    # Z
    .param p4, "_replacing"    # Z
    .param p5, "_userId"    # I
    .param p6, "_verifierUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;ZII)V"
        }
    .end annotation

    .line 1303
    .local p3, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->packageName:Ljava/lang/String;

    .line 1305
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->hasDomainUrls:Z

    .line 1306
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->activities:Ljava/util/List;

    .line 1307
    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    .line 1308
    iput p5, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    .line 1309
    iput p6, p0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    .line 1310
    return-void
.end method
