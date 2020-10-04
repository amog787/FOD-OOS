.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Landroid/os/IBinder;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Lcom/android/server/wm/SafeActivityOptions;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILcom/android/server/wm/SafeActivityOptions;I)V
    .locals 3
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Landroid/os/IBinder;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Lcom/android/server/wm/SafeActivityOptions;
    .param p10, "_userId"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 92
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    .line 94
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 95
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 96
    const/4 v0, 0x0

    if-eqz p6, :cond_0

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 97
    if-eqz p7, :cond_1

    array-length v0, p7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p7, v0

    :cond_1
    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 98
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 99
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 100
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 101
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    .line 102
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 104
    const/16 v0, 0x17

    .line 105
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    add-int/2addr v1, p8

    .line 106
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x25

    add-int/2addr v0, p5

    .line 107
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x25

    add-int/2addr v1, p10

    .line 108
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    if-eqz p4, :cond_2

    .line 109
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v1, v0, v2

    .line 111
    :cond_2
    if-eqz p3, :cond_3

    .line 112
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v1, v0, v2

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 115
    mul-int/lit8 v2, v1, 0x25

    invoke-virtual {v0}, Landroid/content/Intent;->filterHashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 118
    mul-int/lit8 v2, v1, 0x25

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int v1, v2, v0

    .line 120
    :cond_5
    mul-int/lit8 v0, v1, 0x25

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 121
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x25

    add-int/2addr v1, p1

    .line 122
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    iput v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 125
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 130
    return v0

    .line 133
    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$Key;

    .line 134
    .local v1, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v2, v3, :cond_1

    .line 135
    return v0

    .line 137
    :cond_1
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v2, v3, :cond_2

    .line 138
    return v0

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 141
    return v0

    .line 143
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-eq v2, v3, :cond_4

    .line 144
    return v0

    .line 146
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 147
    return v0

    .line 149
    :cond_5
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v2, v3, :cond_6

    .line 150
    return v0

    .line 152
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v2, v3, :cond_8

    .line 153
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    .line 154
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 155
    return v0

    .line 157
    :cond_7
    if-eqz v3, :cond_8

    .line 158
    return v0

    .line 161
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 162
    return v0

    .line 164
    :cond_9
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_a

    .line 165
    return v0

    .line 167
    :cond_a
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v1    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_0
    move-exception v1

    .line 170
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 181
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<null>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 182
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    return-object v0
.end method

.method typeName()Ljava/lang/String;
    .locals 2

    .line 186
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    const-string/jumbo v0, "startForegroundService"

    return-object v0

    .line 192
    :cond_1
    const-string/jumbo v0, "startService"

    return-object v0

    .line 196
    :cond_2
    const-string v0, "activityResult"

    return-object v0

    .line 188
    :cond_3
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 190
    :cond_4
    const-string v0, "broadcastIntent"

    return-object v0
.end method
