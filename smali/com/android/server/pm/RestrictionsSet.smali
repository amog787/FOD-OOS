.class public Lcom/android/server/pm/RestrictionsSet;
.super Ljava/lang/Object;
.source "RestrictionsSet.java"


# static fields
.field private static final TAG_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final TAG_RESTRICTIONS_USER:Ljava/lang/String; = "restrictions_user"

.field private static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private final mUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 59
    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 62
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty restriction bundle cannot be added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEnforcingUser(II)Landroid/os/UserManager$EnforcingUser;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "deviceOwnerUserId"    # I

    .line 152
    if-ne p2, p1, :cond_0

    .line 153
    const/4 v0, 0x2

    goto :goto_0

    .line 154
    :cond_0
    const/4 v0, 0x4

    :goto_0
    nop

    .line 155
    .local v0, "source":I
    new-instance v1, Landroid/os/UserManager$EnforcingUser;

    invoke-direct {v1, p1, v0}, Landroid/os/UserManager$EnforcingUser;-><init>(II)V

    return-object v1
.end method

.method public static readRestrictions(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/server/pm/RestrictionsSet;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/android/server/pm/RestrictionsSet;

    invoke-direct {v0}, Lcom/android/server/pm/RestrictionsSet;-><init>()V

    .line 205
    .local v0, "restrictionsSet":Lcom/android/server/pm/RestrictionsSet;
    const/4 v1, 0x0

    .line 208
    .local v1, "userId":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    .line 209
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "tag":Ljava/lang/String;
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    return-object v0

    .line 212
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string/jumbo v5, "restrictions_user"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    const/4 v4, 0x0

    const-string/jumbo v5, "user_id"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 214
    :cond_1
    if-ne v3, v4, :cond_2

    const-string/jumbo v4, "restrictions"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    invoke-static {p0}, Lcom/android/server/pm/UserRestrictionsUtils;->readRestrictions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v4

    .line 216
    .local v4, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    .line 218
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "restrictions":Landroid/os/Bundle;
    :cond_2
    :goto_1
    goto :goto_0

    .line 219
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v4, "restrictions cannot be read as xml is malformed."

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 226
    const/4 v0, 0x1

    .line 227
    .local v0, "noneSet":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "User Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {p1, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 230
    const/4 v0, 0x0

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    :cond_1
    return-void
.end method

.method public getEnforcingUsers(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "deviceOwnerUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserManager$EnforcingUser;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/pm/RestrictionsSet;->getEnforcingUser(II)Landroid/os/UserManager$EnforcingUser;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public getRestrictions(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "userId"    # I

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public mergeAll()Landroid/os/Bundle;
    .locals 3

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "result":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v0, v2}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public moveRestriction(Lcom/android/server/pm/RestrictionsSet;Ljava/lang/String;)V
    .locals 6
    .param p1, "destRestrictions"    # Lcom/android/server/pm/RestrictionsSet;
    .param p2, "restriction"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 94
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 96
    .local v2, "from":Landroid/os/Bundle;
    invoke-static {v2, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->contains(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v1}, Lcom/android/server/pm/RestrictionsSet;->getRestrictions(I)Landroid/os/Bundle;

    move-result-object v3

    .line 99
    .local v3, "to":Landroid/os/Bundle;
    if-nez v3, :cond_0

    .line 100
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 101
    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/RestrictionsSet;->updateRestrictions(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 104
    :cond_0
    invoke-virtual {v3, p2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :goto_1
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 109
    add-int/lit8 v0, v0, -0x1

    .line 92
    .end local v1    # "userId":I
    .end local v2    # "from":Landroid/os/Bundle;
    .end local v3    # "to":Landroid/os/Bundle;
    :cond_1
    add-int/2addr v0, v4

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public remove(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    .line 172
    .local v0, "hasUserRestriction":Z
    iget-object v1, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 173
    return v0
.end method

.method public removeAllRestrictions()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 181
    return-void
.end method

.method public size()I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public updateRestrictions(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "restrictions"    # Landroid/os/Bundle;

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    .line 76
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/android/server/pm/UserRestrictionsUtils;->areEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 77
    .local v0, "changed":Z
    if-nez v0, :cond_0

    .line 78
    const/4 v1, 0x0

    return v1

    .line 80
    :cond_0
    invoke-static {p2}, Lcom/android/server/pm/UserRestrictionsUtils;->isEmpty(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 85
    :goto_0
    return v1
.end method

.method public valueAt(I)Landroid/os/Bundle;
    .locals 1
    .param p1, "index"    # I

    .line 253
    iget-object v0, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    const-string/jumbo v2, "restrictions_user"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user_id"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    iget-object v3, p0, Lcom/android/server/pm/RestrictionsSet;->mUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string/jumbo v4, "restrictions"

    invoke-static {p1, v3, v4}, Lcom/android/server/pm/UserRestrictionsUtils;->writeRestrictions(Lorg/xmlpull/v1/XmlSerializer;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 194
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    return-void
.end method
