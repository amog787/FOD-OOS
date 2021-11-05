.class final Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;
.super Ljava/lang/Object;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PackageCompatState"
.end annotation


# instance fields
.field private final maxVersionCode:J

.field private final urlBarResourceIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(J[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxVersionCode"    # J
    .param p3, "urlBarResourceIds"    # [Ljava/lang/String;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    iput-wide p1, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    .line 881
    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    .line 882
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 875
    iget-wide v0, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;

    .line 875
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maxVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->maxVersionCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", urlBarResourceIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;->urlBarResourceIds:[Ljava/lang/String;

    .line 887
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 886
    return-object v0
.end method
