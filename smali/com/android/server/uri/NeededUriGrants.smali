.class public Lcom/android/server/uri/NeededUriGrants;
.super Ljava/util/ArrayList;
.source "NeededUriGrants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/android/server/uri/GrantUri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "targetPkg"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "flags"    # I

    .line 31
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    .line 34
    iput p3, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    .line 35
    return-void
.end method


# virtual methods
.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 38
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 39
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/uri/NeededUriGrants;->targetPkg:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 40
    iget v2, p0, Lcom/android/server/uri/NeededUriGrants;->targetUid:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    iget v2, p0, Lcom/android/server/uri/NeededUriGrants;->flags:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/uri/NeededUriGrants;->size()I

    move-result v2

    .line 44
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/uri/NeededUriGrants;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/uri/GrantUri;

    const-wide v5, 0x20b00000004L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/uri/GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 48
    return-void
.end method
