.class final Lcom/android/server/job/controllers/QuotaController$Package;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Package"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final userId:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    .line 132
    iput-object p2, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 141
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 143
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 144
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 146
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 147
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$Package;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Package;

    .line 153
    .local v0, "other":Lcom/android/server/job/controllers/QuotaController$Package;
    iget v2, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget v3, v0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 155
    .end local v0    # "other":Lcom/android/server/job/controllers/QuotaController$Package;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
